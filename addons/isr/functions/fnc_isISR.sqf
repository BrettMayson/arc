#include "..\script_component.hpp"

private _control = UAVControl getConnectedUAV ACE_player;
if (_control#0 == ACE_player && _control#1 != "") exitWith { true };

private _currentVehicle = vehicle ACE_player;
if (_currentVehicle isEqualTo ACE_player) exitWith {false};

if (cameraView != "GUNNER") exitWith {false};
if ([ACE_player] call CBA_fnc_canUseWeapon) exitWith {false};

private _vehConfig = configOf _currentVehicle;

if (ACE_player == (driver _currentVehicle)) exitWith {
    ("NVG" in getArray (_vehConfig >> "ViewOptics" >> "visionMode"));
};

private _turret = ACE_player call CBA_fnc_turretPath;
private _turretConfig = [_currentVehicle, _turret] call CBA_fnc_getTurret;

if ((isNumber (_turretConfig >> "optics")) && {(getNumber (_turretConfig >> "optics")) == 0}) exitWith {false};

private _result = false;

private _turretConfigOpticsIn = _turretConfig >> "OpticsIn";
if (isClass _turretConfigOpticsIn) then {
    for "_index" from 0 to (count _turretConfigOpticsIn - 1) do {
        if ("NVG" in getArray (_turretConfigOpticsIn select _index >> "visionMode")) exitWith {_result = true};
    };
} else {
    // No OpticsIn usualy means RCWS, still need to test on more vehicles
    _result = true;
};
_result
