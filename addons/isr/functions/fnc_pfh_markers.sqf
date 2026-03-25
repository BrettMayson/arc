#include "..\script_component.hpp"

params ["_vehicle"];

if !(GVAR(showMarkers)) exitWith {};

private _channels = _vehicle getVariable [QGVAR(markerChannels), DEFAULT_MARKER_CHANNELS];
private _showDistance = _vehicle getVariable [QGVAR(markerShowDistance), true];

{
    private _channel = markerChannel _x;
    if !(_channel == -1 || _channels select _channel) then { continue };

    if (_x select [0,3] == "aid") then { continue };
    if (markerShape _x != "ICON") then { continue };
    if (worldToScreen (markerPos [_x, true]) isEqualTo []) then { continue };

    private _type = markerType _x;
    if (_type in ["", "Empty", "EmptyIcon"]) then { continue; };

    private _icon = GVAR(markerIconCache) getOrDefaultCall [_type, {
        getText (configFile >> "CfgMarkers" >> _type >> "icon")
    }];
    private _colorType = markerColor _x;
    private _color = GVAR(markerColorCache) getOrDefaultCall [_colorType, {
        getArray (configFile >> "CfgMarkers" >> _type >> "color")
    }];
    _color set [3, markerAlpha _x];

    private _pos = markerPos [_x, true];

    private _text = if (_showDistance) then {
        format ["%1 (%2)", markerText _x, round (_vehicle distance _pos)]
    } else {
        markerText _x
    };

    drawIcon3D [_icon, _color, _pos, 1, 1, 0, _text, 1, 0.035, ISR_FONT];
} forEach allMapMarkers;
