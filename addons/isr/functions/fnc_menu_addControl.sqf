#include "..\script_component.hpp"

params ["_id", "_control"];

private _controlsMap = uiNamespace getVariable [QGVAR(controls), createHashMap];
private _controls = _controlsMap getOrDefault [_id, []];
_controls pushBack _control;
_controlsMap set [_id, _controls];
