#include "script_component.hpp"
ADDON = false;
#include "XEH_PREP.hpp"

GVAR(markerIconCache) = createHashMap;
GVAR(markerColorCache) = createHashMap;

GVAR(menuStack) = [];

[
    QGVAR(maxMarkerDistance),
    "SLIDER",
    LLSTRING(Setting_MaxMarkerDistance),
    "ARC - ISR",
    [2,15,15,0],
    1,
    {
        GVAR(maxMarkerDistance) = round _this;
        if (isNil QGVAR(pfh)) exitWith {};
        private _current = GVAR(vehicle) getVariable [QGVAR(markerMaxDistance), GVAR(maxMarkerDistance)];
        if (_current < _this) exitWith {};
        GVAR(vehicle) setVariable [QGVAR(markerMaxDistance), GVAR(maxMarkerDistance)];
        private _menu = GVAR(menuStack) select -1;
        ["draw", []] call (_menu select 1);
    }
] call CBA_fnc_addSetting;

_fnc_numpad = {
    params ["_line"];
    switch (_line) do {
        case 0: { DIK_NUMPAD0 };
        case 1: { DIK_NUMPAD1 };
        case 2: { DIK_NUMPAD2 };
        case 3: { DIK_NUMPAD3 };
        case 4: { DIK_NUMPAD4 };
        case 5: { DIK_NUMPAD5 };
        case 6: { DIK_NUMPAD6 };
        case 7: { DIK_NUMPAD7 };
        case 8: { DIK_NUMPAD8 };
        case 9: { DIK_NUMPAD9 };
    };
};

[
    "ARC - ISR",
    QGVAR(menuLine0),
    "Back / Exit",
    {
        _this call FUNC(menu_keybind);
    },
    {},
    [[0] call _fnc_numpad, [false, false, false]]
] call CBA_fnc_addKeybind;
for "_i" from 1 to 9 do {
    [
        "ARC - ISR",
        format [QGVAR(menuLine%1), _i],
        format ["Menu %1", _i],
        {
            _this call FUNC(menu_keybind);
        },
        {},
        [[_i] call _fnc_numpad, [false, false, false]]
    ] call CBA_fnc_addKeybind;
};

ADDON = true;
