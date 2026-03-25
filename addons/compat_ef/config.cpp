#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = QUOTE(COMPONENT);
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "arc_core",
            "EF_QAV80_C",
        };
        skipWhenMissingDependencies = 1;
        author = "Brett";
        VERSION_CONFIG;
    };
};

#include "CfgVehicles.hpp"
