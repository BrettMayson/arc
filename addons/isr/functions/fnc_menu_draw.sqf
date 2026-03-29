#include "..\script_component.hpp"

params ["_lines", ["_options", []]];
_options params [["_showNumbers", true]];

_fnc_spacing = {
    params ["_key"];
    private _length = 14 - count _key;
    private _spacing = "";
    for "_i" from 1 to _length do {
        _spacing = _spacing + " ";
    };
    _spacing
};

for "_i" from 0 to 9 do {
    if (_i < count _lines) then {
        private _line = _lines#_i;
        private _text = "";
        private _value = "";
        if (typeName _line == "STRING") then {
            _text = _line;
        } else {
            _text = _line select 0;
            _value = _line select 1;
        };
        if (typeName _value != "STRING") then {
            _value = format ["%1", _value];
        };

        private _number = if (_showNumbers && _i != 0 && _text != "") then { str _i } else { " " };
        private _spacing = [_text] call _fnc_spacing;
        private _rhs = if (_value != "") then {
            format ["%1%2", _spacing, _value]
        } else {
            ""
        };
        private _write = format ["%1 %2%3", _number, _text, _rhs];
        {
            _x ctrlSetText _write;
        } forEach ([format ["menuLine%1", _i]] call FUNC(menu_getControls));
    } else {
        {
            _x ctrlSetText "";
        } forEach ([format ["menuLine%1", _i]] call FUNC(menu_getControls));
    };
};
