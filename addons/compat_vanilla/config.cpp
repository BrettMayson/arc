#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = QUOTE(COMPONENT);
        units[] = {
            QAVAR(ar2_bag_od),
            QAVAR(ar2_bag_green),
            QAVAR(ar2_bag_wdl),
            QAVAR(ar2_bag_tan),
        };
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "arc_core",
            "ace_interaction"
        };
        VERSION_CONFIG;
    };
};

#include "CfgMagazines.hpp"
#include "CfgVehicles.hpp"
