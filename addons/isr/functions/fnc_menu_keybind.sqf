#include "..\script_component.hpp"

if !(call FUNC(isISR)) exitWith {false};

private _line = parseNumber ((_this select 6) select [count (_this select 6) - 8,1]);

if (count GVAR(menuStack) == 0) exitWith {
    ["open", _line, []] call FUNC(menu_main);
    true
};

if (_line == 0) exitWith {
    private _close = true;
    if (count GVAR(menuStack) > 0) then {
        private _menu = GVAR(menuStack) select -1;
        if (_menu select 0 == "grid") then {
            ["key", _line, _menu select 2] call (_menu select 1);
            _close = false;
        };
    };
    if (!_close) exitWith {true};
    private _removed = GVAR(menuStack) deleteAt (count GVAR(menuStack) - 1);
    if (count GVAR(menuStack) > 0) then {
        private _menu = GVAR(menuStack) select -1;
        ["close", _menu select 0, _removed select 2] call (_removed select 1);
        ["return", [_removed select 0, _removed select 2], _menu select 2] call (_menu select 1);
    } else {
        ["close", "", _removed select 2] call (_removed select 1);
        [[]] call FUNC(menu_draw);
    };
};

private _menu = GVAR(menuStack) select -1;
["key", _line, _menu select 2] call (_menu select 1);

true
