class CfgMagazines {
    class AVAR(case_base);

    // Bustard
    class AVAR(case_base_bustard): AVAR(case_base) {
        count = 100;
        picture = "\A3\Air_F_Orange\UAV_06\Data\UI\Map_UAV_06_CA.paa";
        DLC = "lxWS";
        AVAR(deployed) = QUOTE(call FUNC(bustard_deployed));
    };
    class AVAR(B_UAV_02_lxWS_CASE): AVAR(case_base_bustard) {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(B_UAV_02_lxWS_CASE_DisplayName);
        descriptionShort = CSTRING(B_UAV_02_lxWS_CASE_Description);
        AVAR(drone) = "B_UAV_02_lxWS";
    };
    class AVAR(I_UAV_02_lxWS_CASE): AVAR(case_base_bustard) {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(I_UAV_02_lxWS_CASE_DisplayName);
        descriptionShort = CSTRING(I_UAV_02_lxWS_CASE_Description);
        AVAR(drone) = "I_UAV_02_lxWS";
    };
    class AVAR(O_UAV_02_lxWS_CASE): AVAR(case_base_bustard) {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(O_UAV_02_lxWS_CASE_DisplayName);
        descriptionShort = CSTRING(O_UAV_02_lxWS_CASE_Description);
        AVAR(drone) = "O_UAV_02_lxWS";
    };

    // IED Drone
    class AVAR(case_base_ied): AVAR(case_base) {
        count = 100;
        picture = "\A3\Air_F_Orange\UAV_06\Data\UI\Map_UAV_06_CA.paa";
        DLC = "lxWS";
        AVAR(deployed) = QUOTE(call FUNC(ied_deployed));
    };
    class AVAR(B_UAV_02_IED_lxWS_CASE): AVAR(case_base_ied) {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(B_UAV_02_IED_lxWS_CASE_DisplayName);
        descriptionShort = CSTRING(B_UAV_02_IED_lxWS_CASE_Description);
        AVAR(drone) = "B_G_UAV_02_IED_lxWS";
    };
    class AVAR(I_G_UAV_02_IED_lxWS_CASE): AVAR(case_base_ied) {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(I_G_UAV_02_IED_lxWS_CASE_DisplayName);
        descriptionShort = CSTRING(I_G_UAV_02_IED_lxWS_CASE_Description);
        AVAR(drone) = "I_G_UAV_02_IED_lxWS";
    };
    class AVAR(O_G_UAV_02_IED_lxWS_CASE): AVAR(case_base_ied) {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(O_G_UAV_02_IED_lxWS_CASE_DisplayName);
        descriptionShort = CSTRING(O_G_UAV_02_IED_lxWS_CASE_Description);
        AVAR(drone) = "O_G_UAV_02_IED_lxWS";
    };
};
