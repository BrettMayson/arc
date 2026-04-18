#include "..\script_component.hpp"

private _control = UAVControl getConnectedUAV ACE_player;
if (_control#0 == ACE_player && _control#1 != "") exitWith { true };

private _currentVehicle = vehicle ACE_player;
if (_currentVehicle isEqualTo ACE_player) exitWith {false};

if (cameraView != "GUNNER") exitWith {false};

private _vehConfig = configOf _currentVehicle;

if (ACE_player == (driver _currentVehicle)) exitWith {
    ("NVG" in getArray (_vehConfig >> "ViewOptics" >> "visionMode"));
};

private _turret = ACE_player call CBA_fnc_turretPath;
private _turretConfig = [_currentVehicle, _turret] call CBA_fnc_getTurret;

if ((isNumber (_turretConfig >> "optics")) && {(getNumber (_turretConfig >> "optics")) == 0}) exitWith {false};

// FFV
if (currentMuzzle ace_player == currentWeapon ace_player) exitWith {false};

private _result = false;

if (currentWeapon ace_player != "") then {
    if (currentMuzzle ace_player == "") then {
        /// Probably in a command slot with no weapon
        _result = true;
    };
};

private _turretConfigShowCursor = getNumber (_turretConfig >> "gunnerOpticsShowCursor");
if (_turretConfigShowCursor == 0) then {
    /// Probably has a screen, so no cursor
    _result = true;
};

_result
