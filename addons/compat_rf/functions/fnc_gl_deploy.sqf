#include "..\script_component.hpp"

params ["_projectile"];

private _unit = (getShotParents _projectile) select 1;
private _zeroing = currentZeroing _unit;
private _dir = getDir _unit;

[_projectile, _unit,_zeroing, _dir] spawn {
    params ["_projectile", "_unit", "_zeroing", "_dir"];

    private _deployed = _projectile getVariable [QAVAR(deployed), false];
    private _pPos = getPosASL _projectile;

    if !(_deployed) then {
        waitUntil { (speed _projectile != 0) };
    };

    private _thrown = _projectile getVariable [QAVAR(thrown), false];

    private _fuel = if (_thrown) then {
        _zeroing = 20;
        private _max = 0;
        private _mag = (currentThrowable player) select 0;
        {
            _x params ["_class", "_count"];
            if (_mag == _class && _count < 100 && _count > _max) then {
                _max = _count;
            };
        } forEach (magazinesAmmo player);
        if (_max == 0) then {
            WARNING_1("Failed to find matching magazine %1 for thrown projectile",_mag);
        } else {
            [_unit, _mag, _max] call ace_common_fnc_removeSpecificMagazine;
        };
        _max + 1
    } else {
        private _fuel = parseNumber (((currentMagazineDetail _unit) splitString "([ ]/:)") select 2) + 1;
        if !(_deployed) then {
            switch (currentWeapon _unit) do {
                case primaryWeapon _unit: {
                    _unit removePrimaryWeaponItem currentMagazine _unit;
                };
                case secondaryWeapon _unit: {
                    _unit removeSecondaryWeaponItem currentMagazine _unit;
                };
                case handgunWeapon _unit: {
                    _unit removeHandgunItem currentMagazine _unit;
                };
            };
        };
        _fuel + 1
    };

    waitUntil {
        uiSleep 0.05;
        private _moving = (speed _projectile == 0);
        (_moving || {((_pPos distance getPosASL _projectile) >= _zeroing)})
    };

    if (!alive _projectile) exitWith {};

    private _pPos = getPosASL _projectile;
    private _pDir = vectorDir _projectile;
    private _pUp = vectorUp _projectile;
    private _pVel = velocity _projectile;

    deleteVehicle _projectile;

    private _sideUAV = getArray (configOf _projectile >> "lxrf_droneVehicle");

    private _uav = objNull;

    switch (side group _unit) do {
        case west:        { _uav = createVehicle [_sideUAV select 0, [0,0,0], [], 0, "FLY"]; };
        case east:        { _uav = createVehicle [_sideUAV select 1, [0,0,0], [], 0, "FLY"]; };
        case independent: { _uav = createVehicle [_sideUAV select 2, [0,0,0], [], 0, "FLY"]; };
        case civilian:    { _uav = createVehicle [_sideUAV select 3, [0,0,0], [], 0, "FLY"]; };
    };
    createVehicleCrew _uav; 

    _uav setPosASL _pPos;
    _uav setVectorDirAndUp [_pDir, _pUp];
    _uav setVelocity _pVel;
    _unit connectTerminalToUAV _uav;

    _uav setFuel (_fuel / 100);

    [_unit,"lxRF_RC40_deploy_fired",[_uav,_unit]] call BIS_fnc_callScriptedEventHandler;
    [missionNamespace,"lxRF_RC40_deploy_fired",[_uav,_unit]] call BIS_fnc_callScriptedEventHandler;
};
