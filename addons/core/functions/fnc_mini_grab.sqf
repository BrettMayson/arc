#include "..\script_component.hpp"

params ["_unit", "_uav"];

private _magazine = getText ((configOf _uav) >> QAVAR(magazine));
if (_magazine == "") exitWith {};

[_unit, "PutDown"] call ace_common_fnc_doGesture;

private _fuel = fuel _uav;
deleteVehicle _uav;

_unit addMagazine [_magazine, _fuel * 100];
