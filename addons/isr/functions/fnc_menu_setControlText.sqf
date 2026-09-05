#include "..\script_component.hpp"

params ["_id", "_value"];

if (_value == "-0") then {
    _value = "0";
};

{
    _x ctrlSetText _value;
} forEach ([_id] call FUNC(menu_getControls));
