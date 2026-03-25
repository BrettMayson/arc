#include "..\script_component.hpp"

params ["_unit", "_command"];

switch (_command) do {
    case "setSpeedMode": {
        ["speedMode", format ["SPD [%1]: ", GVAR(speedCurrentMode)]] call FUNC(menu_setControlText);
    };
    case "setAltitudeMode": {
        ["altMode", format ["ALT [%1]: ", GVAR(altCurrentMode)]] call FUNC(menu_setControlText);
    };
};
