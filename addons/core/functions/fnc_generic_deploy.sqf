#include "..\script_component.hpp"

params ["_unit", "_params"];
_params params ["_container", "_count", "_case"];

private _drone = getText (configFile >> "CfgMagazines" >> _case >> QAVAR(drone));
if (_drone == "") exitWith {};

private _deployType = getText (configFile >> "CfgMagazines" >> _case >> QAVAR(deployType));
if (_deployType == "") then { _deployType = "generic"; };

private _droneCfg = configFile >> "CfgVehicles" >> _drone;
private _deployTimeConfig = _droneCfg >> QAVAR(deployTime);
private _time = if (isNumber _deployTimeConfig) then {
    getNumber _deployTimeConfig
} else {
    5
};

if (_time > 3) then {
    [_unit, "MedicOther"] call ace_common_fnc_doGesture;
};
[
    _time,
    [_unit, _container, _drone, _case, _count, _deployType],
    {
        (_this select 0) params ["_unit", "_container", "_drone", "_case", "_count", "_deployType"];
        if (local _unit) then {
            _container addMagazineAmmoCargo [_case, -1, _count];
            private _pos = _unit modelToWorld [0,1,0];
            private _uav = if (_deployType == "mini") then {
                private _uav = createVehicle [_drone, [0,0,0], [], 0, "FLY"];
                _pos set [2, (_pos select 2) + 1.5];
                _uav engineOn true;
                [{
                    (_this#0) setPos (_this#1);
                }, [_uav, _pos]] call CBA_fnc_execNextFrame;
                _uav
            } else {
                _drone createVehicle _pos
            };
            _uav setVariable [QAVAR(deployed), true];
            createVehicleCrew _uav;
            [_uav, _count / 100] remoteExec ["setFuel", _uav];
            private _deployed = getText (configFile >> "CfgMagazines" >> _case >> QAVAR(deployed));
            if (_deployed == "") exitWith {};
            [{
                (_this select 0) call compile (_this select 1);
            }, [[_unit, _uav, _drone], _deployed]] call CBA_fnc_execNextFrame;
        };
        [_unit, "PutDown"] call ace_common_fnc_doGesture;
        _unit connectTerminalToUAV _uav;
    },
    {},
    format ["Deploying %1", getText (configFile >> "CfgVehicles" >> _drone >> "displayName")]
] call ace_common_fnc_progressBar;
