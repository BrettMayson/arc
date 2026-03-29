#include "..\script_component.hpp"

params ["_vehicle"];

private _enabled = _vehicle getVariable [QGVAR(markerEnabled), true];

if !(_enabled) exitWith {};

private _channels = _vehicle getVariable [QGVAR(markerChannels), DEFAULT_MARKER_CHANNELS];
private _showDistance = _vehicle getVariable [QGVAR(markerShowDistance), true];
private _maxDistance = (_vehicle getVariable [QGVAR(markerMaxDistance), GVAR(maxMarkerDistance)]) * 1000;

{
    private _channel = markerChannel _x;
    if (_channel == 4) then { continue };
    if !(_channel == -1 || _channels select _channel) then { continue };

    private _pos = markerPos [_x, true];
    private _distance = round (_vehicle distance _pos);
    if (_distance > _maxDistance) then { continue };

    if (_x select [0,3] == "aid") then { continue };
    if (markerShape _x != "ICON") then { continue };
    if (worldToScreen _pos isEqualTo []) then { continue };

    private _type = markerType _x;
    if (_type in ["", "Empty", "EmptyIcon"]) then { continue; };

    private _icon = GVAR(markerIconCache) getOrDefaultCall [_type, {
        getText (configFile >> "CfgMarkers" >> _type >> "icon")
    }];
    private _colorType = markerColor _x;
    private _color = GVAR(markerColorCache) getOrDefaultCall [_colorType, {
        private _array = getArray (configFile >> "CfgMarkerColors" >> _colorType >> "color");
        for "_i" from 0 to 3 do {
            private _val = _array select _i;
            if (typeName _val == "STRING") then {
                _array set [_i, call compile _val];
            };
        };
        _array
    }];
    _color set [3, markerAlpha _x];

    private _text = if (_showDistance) then {
        format ["%1 (%2)", markerText _x, _distance]
    } else {
        markerText _x
    };

    drawIcon3D [_icon, _color, _pos, 1, 1, 0, _text, 1, 0.035, ISR_FONT];
} forEach allMapMarkers;
