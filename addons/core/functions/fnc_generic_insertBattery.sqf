#include "..\script_component.hpp"

params ["_unit", "_params"];
_params params ["_container", "_count", "_uav"];

// Re-check, someone else may have inserted a battery or the battery may have moved since the menu opened
if (!alive _uav || {fuel _uav != 0}) exitWith {};
if ((magazinesAmmoCargo _container) findIf {_x isEqualTo [QAVAR(battery), _count]} == -1) exitWith {};

_container addMagazineAmmoCargo [QAVAR(battery), -1, _count];
[_uav, _count / 100] remoteExec ["setFuel", _uav];
[_unit, "MedicOther"] call ace_common_fnc_doGesture;
