#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = QUOTE(COMPONENT);
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "arc_main",
            "ace_interaction"
        };
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
#include "RscInGameUI.hpp"
