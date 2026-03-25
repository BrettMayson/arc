#include "..\script_component.hpp"

params ["_command", "_arg", ["_state", [0,[]]]];

_fnc_draw = {
    _this params ["_length", "_grid"];
    if (_length == 0) exitWith {
        [[
            "INPUT GRID",
            "6-DIGIT GRID",
            "8-DIGIT GRID",
            "10-DIGIT GRID"
        ]] call FUNC(menu_draw);
    };
    if (_length == count _grid) exitWith {
        [[
            "INPUT GRID",
            format ["%1 DIGIT GRID", _length],
            format ["%1", _grid joinString ""],
            "1 CONFIRM",
            "2 CANCEL",
            "3 CLEAR"
        ], [false]] call FUNC(menu_draw);
    };
    [[
        "INPUT GRID",
        format ["%1 DIGIT GRID", _length],
        format ["> %1", _grid joinString ""]
    ], [false]] call FUNC(menu_draw);
};

switch (_command) do {
    case "open": {
        _state set [0, 0];
        _state set [1, []];
        GVAR(menuStack) pushBack ["grid", { _this call FUNC(menu_grid) }, _state];
        _state call _fnc_draw;
    };
    case "return": {
        _state call _fnc_draw;
    };
    case "key": {
        _state params ["_length", "_grid"];
        if (_length == 0) exitWith {
            switch (_arg) do {
                case 1: {
                    _state set [0, 6];
                    _state call _fnc_draw;
                };
                case 2: {
                    _state set [0, 8];
                    _state call _fnc_draw;
                };
                case 3: {
                    _state set [0, 10];
                    _state call _fnc_draw;
                };
            };
        };
        if (_length == count _grid) exitWith {
            switch (_arg) do {
                case 1: {
                    GVAR(menuStack) deleteAt (count GVAR(menuStack) - 1);
                    private _menu = GVAR(menuStack) select -1;
                    ["return", ["grid", [_state select 0, (_state select 1) joinString ""]], _menu select 2] call (_menu select 1);
                };
                case 2: {
                    GVAR(menuStack) deleteAt (count GVAR(menuStack) - 1);
                    private _menu = GVAR(menuStack) select -1;
                    ["return", ["grid", []], _menu select 2] call (_menu select 1);
                };
                case 3: {
                    _state set [0, 0];
                    _state set [1, []];
                    _state call _fnc_draw;
                };
            };
        };
        _grid pushBack _arg;
        _state call _fnc_draw;
    };
};
