#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = QUOTE(COMPONENT);
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "arc_core",
            "RF_Air_RC40",
        };
        skipWhenMissingDependencies = 1;
        author = "Brett";
        VERSION_CONFIG;
    };
};

class Extended_InitPost_EventHandlers {
    class UAV_RC40_Base_RF {
        class ADDON {
            init = "removeAllActions (_this select 0);";
        };
    };
};

#include "CfgAmmo.hpp"
#include "CfgEventHandlers.hpp"
#include "CfgMagazines.hpp"
#include "CfgMagazineWells.hpp"
#include "CfgVehicles.hpp"
#include "CfgWeapons.hpp"
