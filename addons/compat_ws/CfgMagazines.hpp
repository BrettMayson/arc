class CfgMagazines {
    class AVAR(base);

    // Bustard
    class AVAR(base_bustard): AVAR(base) {
        count = 100;
        picture = "\lxWS\air_f_lxWS\Data\UI\UAV_02_CA.paa";
        DLC = "lxWS";
        AVAR(deployed) = QUOTE(_this call FUNC(bustard_deployed));
    };
    class AVAR(B_UAV_02_lxWS_CASE): AVAR(base_bustard) {
        scope = 2;
        scopeCurator = 2;
        displayName = "Bustard (BLUFOR)";
        descriptionShort = "Contains a BLUFOR AP-5 Bustard";
        AVAR(drone) = "B_UAV_02_lxWS";
    };
    class AVAR(I_UAV_02_lxWS_CASE): AVAR(base_bustard) {
        scope = 2;
        scopeCurator = 2;
        displayName = "Bustard (INDEP)";
        descriptionShort = "Contains an INDEP AP-5 Bustard";
        AVAR(drone) = "I_UAV_02_lxWS";
    };
    class AVAR(O_UAV_02_lxWS_CASE): AVAR(base_bustard) {
        scope = 2;
        scopeCurator = 2;
        displayName = "Bustard (OPFOR)";
        descriptionShort = "Contains an OPFOR AP-5 Bustard";
        AVAR(drone) = "O_UAV_02_lxWS";
    };

    // IED Drone
    class AVAR(base_ied): AVAR(base) {
        count = 100;
        picture = "\lxWS\air_1_f_lxws\Data\UI\UAV_02_IED_CA.paa";
        DLC = "lxWS";
        AVAR(deployed) = QUOTE(_this call FUNC(ied_deployed));
    };
    class AVAR(B_UAV_02_IED_lxWS_CASE): AVAR(base_ied) {
        scope = 2;
        scopeCurator = 2;
        displayName = "Bustard IED (BLUFOR)";
        descriptionShort = "Contains a BLUFOR AP-5 Bustard IED";
        AVAR(drone) = "B_G_UAV_02_IED_lxWS";
    };
    class AVAR(I_G_UAV_02_IED_lxWS_CASE): AVAR(base_ied) {
        scope = 2;
        scopeCurator = 2;
        displayName = "Bustard IED (INDEP)";
        descriptionShort = "Contains an INDEP AP-5 Bustard IED";
        AVAR(drone) = "I_G_UAV_02_IED_lxWS";
    };
    class AVAR(O_G_UAV_02_IED_lxWS_CASE): AVAR(base_ied) {
        scope = 2;
        scopeCurator = 2;
        displayName = "Bustard IED (OPFOR)";
        descriptionShort = "Contains an OPFOR AP-5 Bustard IED";
        AVAR(drone) = "O_G_UAV_02_IED_lxWS";
    };
};
