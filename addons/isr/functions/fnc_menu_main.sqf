#include "..\script_component.hpp"

params ["_command", "_arg"];

_fnc_draw = {
    [[
        "ISR MENU",
        "CONFIGURATION",
        "TARGETS",
        "CAMERA"
    ]] call FUNC(menu_draw);
};

switch (_command) do {
    case "open": {
        if (_arg < 4) then {
            GVAR(menuStack) = [["main_menu", { _this call FUNC(menu_main) }, []]];
        };
        if (_arg == 0) then {
            call _fnc_draw;
        } else {
            ["key", _arg, []] call FUNC(menu_main);
        };
    };
    case "key": {
        switch (_arg) do {
            case 1: {
                ["open", "main_menu"] call FUNC(menu_configuration);
            };
            case 2: {
                ["open", "main_menu"] call FUNC(menu_targets);
            };
            case 3: {
                ["open", "main_menu"] call FUNC(menu_camera);
            };
        };
    };
    case "return": {
        call _fnc_draw;
    };
};
