class CfgMagazines {
    class AVAR(case_base);

    // Darter
    class AVAR(case_base_darter): AVAR(case_base) {
        count = 100;
        picture = "\A3\Drones_F\Air_F_Gamma\UAV_01\Data\UI\Map_UAV_01_CA.paa";
    };
    class AVAR(B_UAV_01_CASE): AVAR(case_base_darter) {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(B_UAV_01_CASE_DisplayName);
        descriptionShort = CSTRING(B_UAV_01_CASE_Description);
        AVAR(drone) = "B_UAV_01_F";
    };
    class AVAR(I_UAV_01_CASE): AVAR(case_base_darter) {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(I_UAV_01_CASE_DisplayName);
        descriptionShort = CSTRING(I_UAV_01_CASE_Description);
        AVAR(drone) = "I_UAV_01_F";
    };
    class AVAR(O_UAV_01_CASE): AVAR(case_base_darter) {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(O_UAV_01_CASE_DisplayName);
        descriptionShort = CSTRING(O_UAV_01_CASE_Description);
        AVAR(drone) = "O_UAV_01_F";
    };
    class AVAR(C_IDAP_UAV_01_CASE): AVAR(case_base_darter) {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(C_IDAP_UAV_01_CASE_DisplayName);
        descriptionShort = CSTRING(C_IDAP_UAV_01_CASE_Description);
        AVAR(drone) = "C_IDAP_UAV_01_F";
    };

    // Pelican
    class AVAR(case_base_pelican): AVAR(case_base) {
        count = 100;
        picture = "\A3\Air_F_Orange\UAV_06\Data\UI\Map_UAV_06_CA.paa";
        DLC = "lxWS";
    };
    class AVAR(B_UAV_06_F_CASE): AVAR(case_base_pelican) {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(B_UAV_06_F_CASE_DisplayName);
        descriptionShort = CSTRING(B_UAV_06_F_CASE_Description);
        AVAR(drone) = "B_UAV_06_F";
    };
    class AVAR(B_UAV_06_medical_F_CASE): AVAR(case_base_pelican) {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(B_UAV_06_medical_F_CASE_DisplayName);
        descriptionShort = CSTRING(B_UAV_06_medical_F_CASE_Description);
        AVAR(drone) = "B_UAV_06_medical_F";
    };
    class AVAR(I_UAV_06_F_CASE): AVAR(case_base_pelican) {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(I_UAV_06_F_CASE_DisplayName);
        descriptionShort = CSTRING(I_UAV_06_F_CASE_Description);
        AVAR(drone) = "I_UAV_06_F";
    };
    class AVAR(I_UAV_06_medical_F_CASE): AVAR(case_base_pelican) {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(I_UAV_06_medical_F_CASE_DisplayName);
        descriptionShort = CSTRING(I_UAV_06_medical_F_CASE_Description);
        AVAR(drone) = "I_UAV_06_medical_F";
    };
    class AVAR(O_UAV_06_F_CASE): AVAR(case_base_pelican) {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(O_UAV_06_F_CASE_DisplayName);
        descriptionShort = CSTRING(O_UAV_06_F_CASE_Description);
        AVAR(drone) = "O_UAV_06_F";
    };
    class AVAR(O_UAV_06_medical_F_CASE): AVAR(case_base_pelican) {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(O_UAV_06_medical_F_CASE_DisplayName);
        descriptionShort = CSTRING(O_UAV_06_medical_F_CASE_Description);
        AVAR(drone) = "O_UAV_06_medical_F";
    };
    class AVAR(C_UAV_06_F_CASE): AVAR(case_base_pelican) {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(C_UAV_06_F_CASE_DisplayName);
        descriptionShort = CSTRING(C_UAV_06_F_CASE_Description);
        AVAR(drone) = "C_UAV_06_F";
    };
    class AVAR(C_UAV_06_medical_F_CASE): AVAR(case_base_pelican) {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(C_UAV_06_medical_F_CASE_DisplayName);
        descriptionShort = CSTRING(C_UAV_06_medical_F_CASE_Description);
        AVAR(drone) = "C_UAV_06_medical_F";
    };
};
