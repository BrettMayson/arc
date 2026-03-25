#include "..\script_component.hpp"

params ["_unit", "_params"];
_params params ["_container", "_count", "_case"];

private _drone = getText (configFile >> "CfgMagazines" >> _case >> QAVAR(drone));
if (_drone isEqualTo "") exitWith {};

private _droneCfg = configFile >> "CfgVehicles" >> _drone;
private _assembleTimeConfig = _droneCfg >> QAVAR(assembleTime);
private _time = if (isNumber _assembleTimeConfig) then {
    getNumber _assembleTimeConfig
} else {
    5
};

if (_time > 3) then {
    [_unit, "MedicOther"] call ace_common_fnc_doGesture;
};
[
    _time,
    [_unit, _container, _drone, _case, _count],
    {
        (_this select 0) params ["_unit","_container","_drone","_case","_count"];
        if (local _unit) then {
            _container addMagazineAmmoCargo [_case, -1, _count];
            private _pos = _unit modelToWorld [0,1,0];
            private _uav = _drone createVehicle _pos;
            createVehicleCrew _uav;
            _uav setPos _pos;
            [_uav, _count / 100] remoteExec ["setFuel", _uav];
            private _assembled = getText (configFile >> "CfgMagazines" >> _case >> QAVAR(assembled));
            if (_assembled isEqualTo "") exitWith {};
            [{
                (_this select 0) call compile (_this select 1);
            }, [[_unit, _uav, _drone], _assembled]] call CBA_fnc_execNextFrame;
        };
        [_unit, "PutDown"] call ace_common_fnc_doGesture;
        _unit connectTerminalToUAV _uav;
    },
    {},
    format ["Assembling %1", getText (configFile >> "CfgVehicles" >> _drone >> "displayName")]
] call ace_common_fnc_progressBar;
