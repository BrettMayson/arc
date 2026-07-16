class CfgVehicles {
    class AVAR(uav_bag_base);
    class AVAR(ar2_bag_base): AVAR(uav_bag_base) {};
    class AVAR(ar2_bag_od): AVAR(ar2_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AR-2, OD)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Orange\Bags\Data\UAV_06_backpack_NATO_co.paa"};
        picture = "\A3\Drones_F\Weapons_F_Gamma\Ammoboxes\Bags\Data\UI\icon_B_C_UAV_oli_ca";
    };
    class AVAR(ar2_bag_green): AVAR(ar2_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AR-2, Green)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Orange\Bags\Data\UAV_06_backpack_AAF_co.paa"};
        picture = "\A3\Drones_F\Weapons_F_Gamma\Ammoboxes\Bags\Data\UI\icon_B_C_UAV_oli_ca";
    };
    class AVAR(ar2_bag_wdl): AVAR(ar2_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AR-2, Woodland)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Enoch\Bags\Data\UAV_backpack_EAF_co.paa"};
        picture = "\A3\Supplies_F_Enoch\Bags\Data\UI\icon_I_E_UAV_01_backpack_F_ca";
    };
    class AVAR(ar2_bag_tan): AVAR(ar2_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AR-2, Tan)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Orange\Bags\Data\UAV_06_backpack_CSAT_co.paa"};
        picture = "\A3\Drones_F\Weapons_F_Gamma\Ammoboxes\Bags\Data\UI\icon_B_C_UAV_cbr_ca";
    };
    class AVAR(ar2_bag_idap): AVAR(ar2_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AR-2, IDAP)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Orange\Bags\Data\UAV_backpack_IDAP_co.paa"};
        picture = "\A3\Supplies_F_Orange\Bags\Data\UI\icon_C_IDAP_UAV_ca";
    };
    class AVAR(al6_bag_base): AVAR(uav_bag_base) {
        model = "\A3\Supplies_F_Orange\Bags\B_UAV_06_F.p3d";
    };
    class AVAR(al6_bag_od): AVAR(al6_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AL-6, OD)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Orange\Bags\Data\UAV_06_backpack_NATO_co.paa","a3\air_f_orange\uav_06\data\b_UAV_06_CO.paa"};
        picture = "\A3\Supplies_F_Orange\Bags\Data\UI\icon_B_UAV_06_ca";
    };
    class AVAR(al6_bag_green): AVAR(al6_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AL-6, Green)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Orange\Bags\Data\UAV_06_backpack_AAF_co.paa","a3\air_f_orange\uav_06\data\i_UAV_06_CO.paa"};
        picture = "\A3\Supplies_F_Orange\Bags\Data\UI\icon_I_UAV_06_ca";
    };
    class AVAR(al6_bag_wdl): AVAR(al6_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AL-6, Woodland)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Enoch\Bags\Data\UAV_06_backpack_LDF_co.paa","a3\air_f_enoch\uav_06\data\I_E_UAV_06_CO.paa"};
        picture = "\a3\Supplies_F_Enoch\Bags\Data\UI\icon_I_E_UAV_06_backpack_F_ca.paa";
    };
    class AVAR(al6_bag_tan): AVAR(al6_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AL-6, Tan)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Orange\Bags\Data\UAV_06_backpack_CSAT_co.paa","a3\air_f_orange\uav_06\data\o_UAV_06_CO.paa"};
        picture = "\A3\Supplies_F_Orange\Bags\Data\UI\icon_O_UAV_06_ca";
    };
    class AVAR(al6_bag_idap): AVAR(al6_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AL-6, IDAP)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Orange\Bags\Data\UAV_backpack_IDAP_co.paa","a3\air_f_orange\uav_06\data\C_IDAP_UAV_06_CO.paa"};
        picture = "\A3\Supplies_F_Orange\Bags\Data\UI\icon_C_IDAP_UAV_06_ca";
    };
    class AVAR(al6_bag_civ): AVAR(al6_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AL-6, CIV)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Orange\Bags\Data\UAV_backpack_Civ_co.paa","a3\air_f_orange\uav_06\data\C_UAV_06_CO.paa"};
        picture = "\A3\Supplies_F_Orange\Bags\Data\UI\icon_C_UAV_06_ca";
    };
    class AVAR(al6m_bag_base): AVAR(uav_bag_base) {};
    class AVAR(al6m_bag_od): AVAR(al6m_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AL-6M, OD)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Orange\Bags\Data\UAV_06_backpack_NATO_co.paa","a3\air_f_orange\uav_06\data\b_uav_06_co.paa"};
        picture = "\A3\Supplies_F_Orange\Bags\Data\UI\icon_B_UAV_06_medical_ca";
    };
    class AVAR(al6m_bag_green): AVAR(al6m_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AL-6M, Green)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Orange\Bags\Data\UAV_06_backpack_AAF_co.paa","a3\air_f_orange\uav_06\data\i_uav_06_co.paa"};
        picture = "\A3\Supplies_F_Orange\Bags\Data\UI\icon_I_UAV_06_medical_ca";
    };
    class AVAR(al6m_bag_wdl): AVAR(al6m_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AL-6M, Woodland)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Enoch\Bags\Data\UAV_06_backpack_LDF_co.paa","a3\air_f_enoch\uav_06\data\I_E_UAV_06_CO.paa"};
        picture = "\A3\Supplies_F_Enoch\Bags\Data\UI\icon_I_E_UAV_06_backpack_F_ca.paa";
    };
    class AVAR(al6m_bag_tan): AVAR(al6m_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AL-6M, Tan)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Orange\Bags\Data\UAV_06_backpack_CSAT_co.paa","a3\air_f_orange\uav_06\data\o_uav_06_co.paa"};
        picture = "\A3\Supplies_F_Orange\Bags\Data\UI\icon_O_UAV_06_medical_ca";
    };
    class AVAR(al6m_bag_idap): AVAR(al6m_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AL-6M, IDAP)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Orange\Bags\Data\UAV_backpack_IDAP_co.paa","\a3\air_f_orange\uav_06\data\c_idap_uav_06_medical_co.paa"};
        picture = "\A3\Supplies_F_Orange\Bags\Data\UI\icon_C_IDAP_UAV_06_medical_ca";
    };
    class AVAR(al6m_bag_civ): AVAR(al6m_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AL-6M, CIV)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Orange\Bags\Data\UAV_backpack_CIV_co.paa","\a3\air_f_orange\uav_06\data\c_uav_06_medical_co.paa"};
        picture = "\A3\Supplies_F_Orange\Bags\Data\UI\icon_C_UAV_06_medical_ca";
    };

    // Hide vanilla backpacks
    #define HIDE scope = 1; scopeCurator = 1; scopeArsenal = 1;
    class Weapon_Bag_Base;
    class B_UAV_01_backpack_F: Weapon_Bag_Base { HIDE };
    class I_E_UAV_01_backpack_F: Weapon_Bag_Base { HIDE };
    class UAV_06_backpack_base_F;
    class B_UAV_06_backpack_F: UAV_06_backpack_base_F { HIDE };
    class I_E_UAV_06_backpack_F: UAV_06_backpack_base_F { HIDE };
    class O_UAV_06_backpack_F: UAV_06_backpack_base_F { HIDE };
    class I_UAV_06_backpack_F: UAV_06_backpack_base_F { HIDE };
    class C_IDAP_UAV_06_backpack_F: UAV_06_backpack_base_F { HIDE };
    class C_UAV_06_backpack_F: UAV_06_backpack_base_F { HIDE };
    class UAV_06_medical_backpack_base_F;
    class B_UAV_06_medical_backpack_F: UAV_06_medical_backpack_base_F { HIDE };
    class I_E_UAV_06_medical_backpack_F: UAV_06_medical_backpack_base_F { HIDE };
    class O_UAV_06_medical_backpack_F: UAV_06_medical_backpack_base_F { HIDE };
    class I_UAV_06_medical_backpack_F: UAV_06_medical_backpack_base_F { HIDE };
    class C_UAV_06_medical_backpack_F: UAV_06_medical_backpack_base_F { HIDE };
    class C_IDAP_UAV_01_backpack_F: Weapon_Bag_Base { HIDE };
    class B_Static_Designator_01_weapon_F: Weapon_Bag_Base { HIDE };
    class B_W_Static_Designator_01_weapon_F: B_Static_Designator_01_weapon_F { HIDE };
    class O_Static_Designator_02_weapon_F: Weapon_Bag_Base { HIDE };

    class Air;
    class Helicopter: Air {
        class ACE_Actions {
            class ACE_MainActions;
        };
    };
    class Helicopter_Base_F: Helicopter {
        class ACE_Actions: ACE_Actions {
            class ACE_MainActions: ACE_MainActions {
                #include "..\core\actions\battery.hpp"
            };
        };
    };

    // Darter
    class UAV_01_base_F: Helicopter_Base_F {
        AVAR(mode) = "LOS";
        AVAR(power)[] = { 100, 200, 300, 400, 600, 800, 1200, 1800 };
        AVAR(defaultPower) = 100;
        AVAR(freq)[] = { 433, 915, 1200, 2400, 5800 };
        AVAR(defaultFreq) = 1200;
        AVAR(isr) = QEFUNC(isr,vanilla);
        class ACE_Actions: ACE_Actions {
            class ACE_MainActions: ACE_MainActions {
                #include "..\core\actions\pack.hpp"
            };
        };
    };
    class B_UAV_01_F: UAV_01_base_F {
        AVAR(case) = QAVAR(B_UAV_01_CASE);
        delete assembleInfo;
    };
    class I_UAV_01_F: UAV_01_base_F {
        AVAR(case) = QAVAR(I_UAV_01_CASE);
        delete assembleInfo;
    };
    class O_UAV_01_F: UAV_01_base_F {
        AVAR(case) = QAVAR(O_UAV_01_CASE);
        delete assembleInfo;
    };
    class C_IDAP_UAV_01_F: UAV_01_base_F {
        AVAR(case) = QAVAR(C_IDAP_UAV_01_CASE);
        delete assembleInfo;
    };

    // Falcon
    class UAV_03_base_F: Helicopter_Base_F {
        AVAR(mode) = "SAT";
        AVAR(noBattery) = 1;
        AVAR(isr) = QEFUNC(isr,vanilla);
    };

    /// YABHON
    class UAV;
    class UAV_02_base_F: UAV {
        AVAR(mode) = "SAT";
        AVAR(noBattery) = 1;
        AVAR(isr) = QEFUNC(isr,vanilla);
    };

    // Sentinel
    class UAV_05_Base_F: UAV {
        AVAR(mode) = "SAT";
        AVAR(noBattery) = 1;
        AVAR(isr) = QEFUNC(isr,vanilla);
    };

    // Stomper
    class Car_F;
    class UGV_01_base_F: Car_F {
        AVAR(mode) = "SAT";
        AVAR(noBattery) = 1;
        AVAR(isr) = QEFUNC(isr,vanilla);
    };

    // Pelican
    class UAV_06_base_F: Helicopter_Base_F {
        AVAR(mode) = "LOS";
        AVAR(power)[] = { 100, 200, 300, 400, 600, 800, 1200, 1800 };
        AVAR(defaultPower) = 100;
        AVAR(freq)[] = { 433, 915, 1200, 2400, 5800 };
        AVAR(defaultFreq) = 1200;
        AVAR(isr) = QEFUNC(isr,vanilla);
        class ACE_Actions: ACE_Actions {
            class ACE_MainActions: ACE_MainActions {
                #include "..\core\actions\pack.hpp"
            };
        };
    };
    class B_UAV_06_F: UAV_06_base_F {
        AVAR(case) = QAVAR(B_UAV_06_F_CASE);
        delete assembleInfo;
    };
    class B_UAV_06_medical_F: UAV_06_base_F {
        AVAR(case) = QAVAR(B_UAV_06_medical_F_CASE);
        delete assembleInfo;
    };
    class I_UAV_06_F: UAV_06_base_F {
        AVAR(case) = QAVAR(I_UAV_06_F_CASE);
        delete assembleInfo;
    };
    class I_UAV_06_medical_F: UAV_06_base_F {
        AVAR(case) = QAVAR(I_UAV_06_medical_F_CASE);
        delete assembleInfo;
    };
    class O_UAV_06_F: UAV_06_base_F {
        AVAR(case) = QAVAR(O_UAV_06_F_CASE);
        delete assembleInfo;
    };
    class O_UAV_06_medical_F: UAV_06_base_F {
        AVAR(case) = QAVAR(O_UAV_06_medical_F_CASE);
        delete assembleInfo;
    };
    class C_UAV_06_F: UAV_06_base_F {
        AVAR(case) = QAVAR(C_UAV_06_F_CASE);
        delete assembleInfo;
    };
    class C_UAV_06_medical_F: UAV_06_base_F {
        AVAR(case) = QAVAR(C_UAV_06_medical_F_CASE);
        delete assembleInfo;
    };

    // Remote designator
    class LandVehicle;
    class StaticWeapon: LandVehicle {
        class ACE_Actions;
    };
    class Static_Designator_01_base_F: StaticWeapon {
        AVAR(mode) = "LOS";
        AVAR(power)[] = { 100, 200, 300, 400, 600, 800, 1200, 1800 };
        AVAR(defaultPower) = 100;
        AVAR(freq)[] = { 433, 915, 1200, 2400, 5800 };
        AVAR(defaultFreq) = 1200;
        AVAR(isr) = QEFUNC(isr,designator);
        AVAR(noBattery) = 1;
        class ACE_Actions: ACE_Actions {
            class ACE_MainActions;
        };
    };
    class B_Static_Designator_01_F: Static_Designator_01_base_F {
        delete assembleInfo;
        AVAR(case) = QAVAR(B_Static_Designator_01_F_CASE);
        AVAR(caseWeapon) = 1;
        class ACE_Actions: ACE_Actions {
            class ACE_MainActions: ACE_MainActions {
                #include "..\core\actions\pack.hpp"
            };
        };
    };
    class Static_Designator_02_base_F: StaticWeapon {
        AVAR(mode) = "LOS";
        AVAR(power)[] = { 100, 200, 300, 400, 600, 800, 1200, 1800 };
        AVAR(defaultPower) = 100;
        AVAR(freq)[] = { 433, 915, 1200, 2400, 5800 };
        AVAR(defaultFreq) = 1200;
        AVAR(isr) = QEFUNC(isr,designator);
        AVAR(noBattery) = 1;
        class ACE_Actions: ACE_Actions {
            class ACE_MainActions;
        };
    };
    class O_Static_Designator_02_F: Static_Designator_02_base_F {
        delete assembleInfo;
        AVAR(case) = QAVAR(O_Static_Designator_02_F_CASE);
        AVAR(caseWeapon) = 1;
        class ACE_Actions: ACE_Actions {
            class ACE_MainActions: ACE_MainActions {
                #include "..\core\actions\pack.hpp"
            };
        };
    };
};
