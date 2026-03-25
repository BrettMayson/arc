#include "..\script_component.hpp"

params ["_unit", "_params"];
_params params ["_container", "_count", "_uav"];

_container addMagazineAmmoCargo [QAVAR(battery), -1, _count];
[_uav, _count / 100] remoteExec ["setFuel", _uav];
[_unit, "MedicOther"] call ace_common_fnc_doGesture;
