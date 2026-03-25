#include "..\script_component.hpp"

params ["_lines", ["_options", []]];
_options params [["_showNumbers", true]];

for "_i" from 0 to 9 do {
    if (_i < count _lines) then {
        private _text = if (_i == 0 || !_showNumbers) then {
            _lines#_i
        } else {
            format ["%1 %2", _i, _lines#_i]
        };
        {
            _x ctrlSetText _text;
        } forEach ([format ["menuLine%1", _i]] call FUNC(menu_getControls));
    } else {
        {
            _x ctrlSetText "";
        } forEach ([format ["menuLine%1", _i]] call FUNC(menu_getControls));
    };
};
