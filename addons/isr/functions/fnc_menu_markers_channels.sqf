#include "..\script_component.hpp"

params ["_command", "_arg"];

_fnc_availableChannels = {
    private _available = [
        [LLSTRING(Menu_Configuration_Markers_Global), 0],
        [LLSTRING(Menu_Configuration_Markers_Side), 1],
        [LLSTRING(Menu_Configuration_Markers_Command), 2],
        [LLSTRING(Menu_Configuration_Markers_Group), 3]
    ];
    for "_i" from 1 to 10 do {
        (radioChannelInfo _i) params ["", "_label", "", "_units", "", "_enabled"];
        if (_enabled) then {
            if (ace_player in _units) then {
                _available pushBack [toUpper _label, _i + 5];
            };
        };
    };
    _available
};

_fnc_draw = {
    private _channels = GVAR(vehicle) getVariable [QGVAR(markerChannels), DEFAULT_MARKER_CHANNELS];
    private _menu = [
        LLSTRING(Menu_Configuration_Markers_Channels)
    ];
    {
        private _label = _x select 0;
        private _channel = _x select 1;
        _menu pushBack [_label, [_channels select _channel] call FUNC(fmt_onoff)];
    } forEach call _fnc_availableChannels;
    [_menu] call FUNC(menu_draw);
};

switch (_command) do {
    case "open": {
        GVAR(menuStack) pushBack ["markers_channels", { _this call FUNC(menu_markers_channels) }, []];
        call _fnc_draw;
    };
    case "return": {
        call _fnc_draw;
    };
    case "key": {
        private _index = _arg - 1;
        private _channels = call _fnc_availableChannels;
        if (_index > (count _channels - 1)) exitWith {};
        private _channelSettings = GVAR(vehicle) getVariable [QGVAR(markerChannels), DEFAULT_MARKER_CHANNELS];
        _channelSettings set [_channels select _index select 1, !(_channelSettings select (_channels select _index select 1))];
        GVAR(vehicle) setVariable [QGVAR(markerChannels), _channelSettings, true];
        call _fnc_draw;
    };
};
