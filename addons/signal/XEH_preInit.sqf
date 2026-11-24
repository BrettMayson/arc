#include "script_component.hpp"
ADDON = false;
#include "XEH_PREP.hpp"

GVAR(satCacheExpiry) = 0;
GVAR(nextSignalAdjust) = 0;
GVAR(baseDisruptStrength) = 0;

AVAR(mode) = "LOS";
AVAR(currentSignal) = 1;

ADDON = true;
