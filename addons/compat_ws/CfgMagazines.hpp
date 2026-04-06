class CfgMagazines {
    class AVAR(base);

    // Bustard
    class AVAR(base_bustard): AVAR(base) {
        count = 100;
        picture = "\A3\Air_F_Orange\UAV_06\Data\UI\Map_UAV_06_CA.paa";
        DLC = "lxWS";
        AVAR(deployed) = QUOTE(_this call FUNC(bustard_deployed));
    };
    class AVAR(B_UAV_02_lxWS_CASE): AVAR(base_bustard) {
        scope = 2;
        scopeCurator = 2;
        displayName = "AP-5 (BLUFOR)";
        descriptionShort = "Contains a BLUFOR AP-5";
        AVAR(drone) = "B_UAV_02_lxWS";
    };
    class AVAR(I_UAV_02_lxWS_CASE): AVAR(base_bustard) {
        scope = 2;
        scopeCurator = 2;
        displayName = "AP-5 (INDEP)";
        descriptionShort = "Contains an INDEP AP-5";
        AVAR(drone) = "I_UAV_02_lxWS";
    };
    class AVAR(O_UAV_02_lxWS_CASE): AVAR(base_bustard) {
        scope = 2;
        scopeCurator = 2;
        displayName = "AP-5 (OPFOR)";
        descriptionShort = "Contains an OPFOR AP-5";
        AVAR(drone) = "O_UAV_02_lxWS";
    };

    // IED Drone
    class AVAR(base_ied): AVAR(base) {
        count = 100;
        picture = "\A3\Air_F_Orange\UAV_06\Data\UI\Map_UAV_06_CA.paa";
        DLC = "lxWS";
        AVAR(deployed) = QUOTE(_this call FUNC(ied_deployed));
    };
    class AVAR(B_UAV_02_IED_lxWS_CASE): AVAR(base_ied) {
        scope = 2;
        scopeCurator = 2;
        displayName = "AP-5 IED (BLUFOR)";
        descriptionShort = "Contains a BLUFOR AP-5 IED";
        AVAR(drone) = "B_G_UAV_02_IED_lxWS";
    };
    class AVAR(I_G_UAV_02_IED_lxWS_CASE): AVAR(base_ied) {
        scope = 2;
        scopeCurator = 2;
        displayName = "AP-5 IED (INDEP)";
        descriptionShort = "Contains an INDEP AP-5 IED";
        AVAR(drone) = "I_G_UAV_02_IED_lxWS";
    };
    class AVAR(O_G_UAV_02_IED_lxWS_CASE): AVAR(base_ied) {
        scope = 2;
        scopeCurator = 2;
        displayName = "AP-5 IED (OPFOR)";
        descriptionShort = "Contains an OPFOR AP-5 IED";
        AVAR(drone) = "O_G_UAV_02_IED_lxWS";
    };
};
