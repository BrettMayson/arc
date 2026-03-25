class CfgMagazines {
    class AVAR(base);

    // Darter
    class AVAR(base_darter): AVAR(base) {
        count = 100;
        picture = "\A3\Drones_F\Air_F_Gamma\UAV_01\Data\UI\UAV_01_CA.paa";
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
};
