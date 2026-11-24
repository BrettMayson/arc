#include "..\script_component.hpp"

params ["_unit", "_uav"];

if (!alive _uav || {fuel _uav == 0}) exitWith {};

private _containers = [
    vestContainer _unit,
    uniformContainer _unit,
    backpackContainer _unit
];
private _index = _containers findIf {_x canAdd QAVAR(battery)};
if (_index == -1) exitWith {};

(_containers select _index) addMagazineAmmoCargo [QAVAR(battery), 1, round ((fuel _uav) * 100)];

[_uav, 0] remoteExec ["setFuel", _uav];
[_unit, "MedicOther"] call ace_common_fnc_doGesture;
