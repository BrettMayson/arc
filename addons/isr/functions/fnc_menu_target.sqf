#include "..\script_component.hpp"

params ["_command", "_arg", ["_state", []]];

_fnc_draw = {
    params ["", "_label"];
    private _menu = [
        _label,
        "LOCK CAMERA"
    ];
    [_menu] call FUNC(menu_draw);
};

switch (_command) do {
    case "open": {
        _state set [0, _arg#1];
        _state set [1, getText (configOf (_arg select 1) >> "displayName")];
        GVAR(menuStack) pushBack ["target", { _this call FUNC(menu_target) }, _state];
        _state call _fnc_draw;
    };
    case "return": {
        _state call _fnc_draw;
    };
    case "key": {
        switch (_arg) do {
            case 1: {
                GVAR(vehicle) setPilotCameraTarget (_state select 0);
                GVAR(vehicle) enableDirectionStabilization [true, [0]];
                GVAR(vehicle) lockCameraTo [_state select 0, [0]];
            };
        };
    };
};
