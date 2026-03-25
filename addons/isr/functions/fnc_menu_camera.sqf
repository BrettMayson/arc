#include "..\script_component.hpp"

params ["_command", "_arg", ["_state", []]];

_fnc_draw = {
    private _menu = [
        "CAMERA",
        "MOVE TO GRID",
        "LOCK TO GRID"
    ];
    [_menu] call FUNC(menu_draw);
};

switch (_command) do {
    case "open": {
        _state set [0, ""];
        GVAR(menuStack) pushBack ["camera", { _this call FUNC(menu_camera) }, _state];
        call _fnc_draw;
    };
    case "return": {
        _arg params ["_from", "_ret"];
        if (_state select 0 == "move to grid" && _from == "grid" && _ret isNotEqualTo [] && (_ret select 0) != 0) then {
            private _pos = (_ret select 1 call BIS_fnc_gridToPos) select 0;
            _pos set [2, getTerrainHeightASL _pos];
            GVAR(vehicle) enableDirectionStabilization [true, [0]];
            GVAR(vehicle) lockCameraTo [_pos, [0], true];
            _state set [0, ""];
        };
        if (_state select 0 == "lock to grid" && _from == "grid" && _ret isNotEqualTo [] && (_ret select 0) != 0) then {
            private _pos = (_ret select 1 call BIS_fnc_gridToPos) select 0;
            _pos set [2, getTerrainHeightASL _pos];
            GVAR(vehicle) enableDirectionStabilization [true, [0]];
            GVAR(vehicle) lockCameraTo [_pos, [0], true];
            _state set [0, ""];
        };
        call _fnc_draw;
    };
    case "key": {
        switch (_arg) do {
            case 1: {
                _state set [0, "move to grid"];
                ["open", "camera"] call FUNC(menu_grid);
            };
            case 2: {
                _state set [0, "lock to grid"];
                ["open", "camera"] call FUNC(menu_grid);
            };
        };
    };
};
