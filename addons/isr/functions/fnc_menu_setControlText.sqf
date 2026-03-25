#include "..\script_component.hpp"

params ["_id", "_value"];

{
    _x ctrlSetText _value;
} forEach ([_id] call FUNC(menu_getControls));
