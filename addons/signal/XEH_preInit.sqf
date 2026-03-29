#include "script_component.hpp"
ADDON = false;
#include "XEH_PREP.hpp"

GVAR(satCacheExpiry) = 0;
GVAR(nextSignalAdjust) = 0;
GVAR(baseDisruptStrength) = 0;

if ((productVersion select 2) < 222) then {
    [
        QGVAR(disableTISignal),
        "SLIDER",
        "TI Signal Threshold",
        "ARC - Signal",
        [0,1,0.7,2,true],
        1
    ] call CBA_fnc_addSetting;
};

ADDON = true;
