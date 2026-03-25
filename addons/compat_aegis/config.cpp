#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = QUOTE(COMPONENT);
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "arc_core",
            "A3_Aegis_Air_F_Aegis_UAV_07",
            "A3_Air_F_Exp_UAV_04",
        };
        skipWhenMissingDependencies = 1;
        author = "Brett";
        VERSION_CONFIG;
    };
};

#include "CfgVehicles.hpp"
