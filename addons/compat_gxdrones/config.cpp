#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = QUOTE(COMPONENT);
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "arc_core",
            "gx_drones_uav_blackhornet",
            "gx_drones_uav_drone40",
            "gx_drones_uav_hunter",
            "gx_drones_uav_mq8b",
            "gx_drones_uav_rq11b",
            "gx_drones_ugv_honeybadger",
            "gx_drones_ugv_themis",
            "A3_Air_F_Exp_UAV_04",

        };
        skipWhenMissingDependencies = 1;
        author = "Cplhardcore";
        VERSION_CONFIG;
    };
};

#include "CfgVehicles.hpp"
