class CfgMagazines {
    class AVAR(base);

    // Darter
    class AVAR(base_darter): AVAR(base) {
        count = 100;
        picture = "\A3\Drones_F\Air_F_Gamma\UAV_01\Data\UI\Map_UAV_01_CA.paa";
    };
    class AVAR(B_UAV_01_CASE): AVAR(base_darter) {
        scope = 2;
        scopeCurator = 2;
        displayName = "AR-2 (BLUFOR)";
        descriptionShort = "Contains a BLUFOR AR-2 Darter";
        AVAR(drone) = "B_UAV_01_F";
    };
    class AVAR(I_UAV_01_CASE): AVAR(base_darter) {
        scope = 2;
        scopeCurator = 2;
        displayName = "AR-2 (INDEP)";
        descriptionShort = "Contains an INDEP AR-2 Darter";
        AVAR(drone) = "I_UAV_01_F";
    };
    class AVAR(O_UAV_01_CASE): AVAR(base_darter) {
        scope = 2;
        scopeCurator = 2;
        displayName = "AR-2 (OPFOR)";
        descriptionShort = "Contains an OPFOR AR-2 Darter";
        AVAR(drone) = "O_UAV_01_F";
    };

    // Pelican
    class AVAR(base_pelican): AVAR(base) {
        count = 100;
        picture = "\A3\Air_F_Orange\UAV_06\Data\UI\Map_UAV_06_CA.paa";
        DLC = "lxWS";
    };
    class AVAR(B_UAV_06_F_CASE): AVAR(base_pelican) {
        scope = 2;
        scopeCurator = 2;
        displayName = "AL-6 (BLUFOR)";
        descriptionShort = "Contains a BLUFOR AL-6";
        AVAR(drone) = "B_UAV_06_F";
    };
    class AVAR(B_UAV_06_medical_F_CASE): AVAR(base_pelican) {
        scope = 2;
        scopeCurator = 2;
        displayName = "AL-6 Medical (BLUFOR)";
        descriptionShort = "Contains a BLUFOR AL-6 Medical";
        AVAR(drone) = "B_UAV_06_medical_F";
    };
    class AVAR(I_UAV_06_F_CASE): AVAR(base_pelican) {
        scope = 2;
        scopeCurator = 2;
        displayName = "AL-6 (INDEP)";
        descriptionShort = "Contains an INDEP AL-6";
        AVAR(drone) = "I_UAV_06_F";
    };
    class AVAR(I_UAV_06_medical_F_CASE): AVAR(base_pelican) {
        scope = 2;
        scopeCurator = 2;
        displayName = "AL-6 Medical (INDEP)";
        descriptionShort = "Contains an INDEP AL-6 Medical";
        AVAR(drone) = "I_UAV_06_medical_F";
    };
    class AVAR(O_UAV_06_F_CASE): AVAR(base_pelican) {
        scope = 2;
        scopeCurator = 2;
        displayName = "AL-6 (OPFOR)";
        descriptionShort = "Contains an OPFOR AL-6";
        AVAR(drone) = "O_UAV_06_F";
    };
    class AVAR(O_UAV_06_medical_F_CASE): AVAR(base_pelican) {
        scope = 2;
        scopeCurator = 2;
        displayName = "AL-6 Medical (OPFOR)";
        descriptionShort = "Contains an OPFOR AL-6 Medical";
        AVAR(drone) = "O_UAV_06_medical_F";
    };
    class AVAR(C_UAV_06_F_CASE): AVAR(base_pelican) {
        scope = 2;
        scopeCurator = 2;
        displayName = "AL-6 (CIVILIAN)";
        descriptionShort = "Contains a CIVILIAN AL-6";
        AVAR(drone) = "C_UAV_06_F";
    };
    class AVAR(C_UAV_06_medical_F_CASE): AVAR(base_pelican) {
        scope = 2;
        scopeCurator = 2;
        displayName = "AL-6 Medical (CIVILIAN)";
        descriptionShort = "Contains a CIVILIAN AL-6 Medical";
        AVAR(drone) = "C_UAV_06_medical_F";
    };
};
