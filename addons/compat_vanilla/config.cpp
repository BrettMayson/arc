#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = QUOTE(COMPONENT);
        units[] = {
            QAVAR(ar2_bag_od),
            QAVAR(ar2_bag_green),
            QAVAR(ar2_bag_wdl),
            QAVAR(ar2_bag_tan),
            QAVAR(ar2_bag_idap),
            QAVAR(al6_bag_od),
            QAVAR(al6_bag_green),
            QAVAR(al6_bag_wdl),
            QAVAR(al6_bag_tan),
            QAVAR(al6_bag_idap),
            QAVAR(al6_bag_civ),
            QAVAR(al6m_bag_od),
            QAVAR(al6m_bag_green),
            QAVAR(al6m_bag_wdl),
            QAVAR(al6m_bag_tan),
            QAVAR(al6m_bag_idap),
            QAVAR(al6m_bag_civ),
        };
        weapons[] = {
            QAVAR(B_Static_Designator_01_F_CASE),
            QAVAR(O_Static_Designator_02_F_CASE),
        };
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
#include "CfgWeapons.hpp"
