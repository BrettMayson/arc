#include "..\script_component.hpp"

params ["_command", "_arg"];

_fnc_draw = {
    private _channels = GVAR(vehicle) getVariable [QGVAR(markerChannels), DEFAULT_MARKER_CHANNELS];
    private _menu = [
        LLSTRING(Menu_Configuration_Markers),
        [LLSTRING(Menu_Configuration_Markers_Enabled), [GVAR(vehicle) getVariable [QGVAR(markerEnabled), true]] call FUNC(fmt_onoff)],
        [LLSTRING(Menu_Configuration_Markers_Distance), [GVAR(vehicle) getVariable [QGVAR(markerShowDistance), true]] call FUNC(fmt_onoff)],
        "",
        "",
        "",
        "",
        "",
        "",
        LLSTRING(Menu_Configuration_Markers_Channels)
    ];
    [_menu] call FUNC(menu_draw);
};

switch (_command) do {
    case "open": {
        GVAR(menuStack) pushBack ["markers", { _this call FUNC(menu_markers) }, []];
        call _fnc_draw;
    };
    case "return": {
        call _fnc_draw;
    };
    case "key": {
        switch (_arg) do {
            case 1: {
                private _enabled = GVAR(vehicle) getVariable [QGVAR(markerEnabled), true];
                GVAR(vehicle) setVariable [QGVAR(markerEnabled), !_enabled, true];
                call _fnc_draw;
            };
            case 2: {
                private _distance = GVAR(vehicle) getVariable [QGVAR(markerShowDistance), true];
                GVAR(vehicle) setVariable [QGVAR(markerShowDistance), !_distance, true];
                call _fnc_draw;
            };
            case 9: {
                ["open", "configuration"] call FUNC(menu_markers_channels);
            };
        };
    };
};
