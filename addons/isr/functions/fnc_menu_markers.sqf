#include "..\script_component.hpp"

params ["_command", "_arg"];

_fnc_availableChannels = {
    private _available = [
        ["GLOBAL", 0],
        ["SIDE", 1],
        ["GROUP", 3],
        ["VEHICLE", 4]
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
        "MARKERS",
        format ["DISTANCE: %1", ["OFF", "ON"] select (GVAR(vehicle) getVariable [QGVAR(markerShowDistance), true])]
    ];
    {
        private _label = _x select 0;
        private _channel = _x select 1;
        _menu pushBack format ["%1: %2", _label, ["OFF", "ON"] select (_channels select _channel)];
    } forEach call _fnc_availableChannels;
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
        if (_arg == 1) then {
            private _distance = GVAR(vehicle) getVariable [QGVAR(markerShowDistance), true];
            GVAR(vehicle) setVariable [QGVAR(markerShowDistance), !_distance, true];
            
        } else {
            private _index = _arg - 2;
            private _channels = call _fnc_availableChannels;
            if (_index > (count _channels - 1)) exitWith {};
            private _channelSettings = GVAR(vehicle) getVariable [QGVAR(markerChannels), DEFAULT_MARKER_CHANNELS];
            _channelSettings set [_channels select _index select 1, !(_channelSettings select (_channels select _index select 1))];
            GVAR(vehicle) setVariable [QGVAR(markerChannels), _channelSettings, true];
        };
        call _fnc_draw;
    };
};
