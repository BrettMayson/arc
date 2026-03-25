#include "..\script_component.hpp"

params ["_command", "_arg"];

_fnc_draw = {
    private _menu = [
        "TARGETS"
    ];
    for "_i" from 0 to 8 do {
        private _gi = GVAR(menuTargetPage) * 9 + _i;
        if (_gi > (count GVAR(currentTargets) - 1)) then {
            break;
        };
        if (_i == 8 && (count GVAR(currentTargets) - 1) > _gi) then {
            _menu pushBack "NEXT PAGE";
            break;
        };
        _menu pushBack (getText (configOf (GVAR(currentTargets) select _gi) >> "displayName"));
    };
    [_menu] call FUNC(menu_draw);
};

switch (_command) do {
    case "open": {
        GVAR(menuStack) pushBack ["targets", { _this call FUNC(menu_targets) }, []];
        GVAR(menuTargetPage) = 0;
        if (_arg == "main_menu") then {
            GVAR(menuTargetOpen) = true;
        };
        GVAR(menuTargetPage) = 0;
        GVAR(currentTargets) = [];
        {
            if ((_x select 3) isNotEqualTo []) then {
                GVAR(currentTargets) pushBack (_x select 0);
            };
        } forEach (getSensorTargets GVAR(vehicle));
        call _fnc_draw;
    };
    case "close": {
        GVAR(menuTargetOpen) = false;
    };
    case "return": {
        GVAR(menuTargetOpen) = true;
        call _fnc_draw;
    };
    case "key": {
        private _gi = GVAR(menuTargetPage) * 9 + (_arg - 1);
        // Next page
        if (_arg == 9 && (count GVAR(currentTargets) - 1) > _gi) exitWith {
            GVAR(menuTargetPage) = GVAR(menuTargetPage) + 1;
            call _fnc_draw;
        };
        if (_gi >= count GVAR(currentTargets)) exitWith {};
        private _target = GVAR(currentTargets) select _gi;
        GVAR(menuTargetOpen) = false;
        ["open", ["targets", _target]] call FUNC(menu_target);
    };
};
