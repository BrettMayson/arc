#include "..\script_component.hpp"

params ["_id"];

private _controls = uiNamespace getVariable [QGVAR(controls), createHashMap];
_controls getOrDefault [_id, []]
