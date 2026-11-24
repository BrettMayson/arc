#include "..\script_component.hpp"

params ["_unit", "_uav"];

private _magazine = getText ((configOf _uav) >> QAVAR(magazine));
if (_magazine == "") exitWith {};
if (isNull _uav || {!alive _uav}) exitWith {};

[_unit, "PutDown"] call ace_common_fnc_doGesture;

private _ammo = round (fuel _uav * 100);
deleteVehicleCrew _uav;
deleteVehicle _uav;

[_unit, _magazine, _ammo] call FUNC(addMagazine);
