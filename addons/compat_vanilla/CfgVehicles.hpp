class CfgVehicles {
    class AVAR(uav_bag_base);
    class AVAR(ar2_bag_od): AVAR(uav_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AR-2, OD)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Orange\Bags\Data\UAV_06_backpack_NATO_co.paa"};
    };
    class AVAR(ar2_bag_green): AVAR(uav_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AR-2, Green)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Orange\Bags\Data\UAV_06_backpack_AAF_co.paa"};
    };
    class AVAR(ar2_bag_wdl): AVAR(uav_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AR-2, Woodland)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Enoch\Bags\Data\UAV_backpack_EAF_co.paa"};
    };
    class AVAR(ar2_bag_tan): AVAR(uav_bag_base) {
        scope = 2;
        displayName = "UAV Backpack (AR-2, Tan)";
        hiddenSelectionsTextures[] = {"\A3\Supplies_F_Orange\Bags\Data\UAV_06_backpack_CSAT_co.paa"};
    };

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
};
