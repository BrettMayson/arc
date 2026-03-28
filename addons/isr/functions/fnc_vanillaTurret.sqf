#include "..\script_component.hpp"

params ["_unit", "_command"];

switch (_command) do {
    case "setSpeedMode": {
        ["speedMode", format [LLSTRING(Info_Speed), GVAR(speedCurrentMode)]] call FUNC(menu_setControlText);
    };
    case "setAltitudeMode": {
        ["altMode", format [LLSTRING(Info_Altitude), GVAR(altCurrentMode)]] call FUNC(menu_setControlText);
    };
};
