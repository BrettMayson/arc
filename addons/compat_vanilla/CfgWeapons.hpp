class CfgWeapons {
    class CBA_MiscItem_ItemInfo;
    class AVAR(case_base);
    class AVAR(B_Static_Designator_01_F_CASE): AVAR(case_base) {
        scope = 2;
        displayName = "Remote Designator (BLUFOR)";
        picture = "\A3\Static_F_Mark\Designator_01\Data\UI\map_Designator_01_CA.paa";
        AVAR(drone) = "B_Static_Designator_01_F";
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 50;
        };
    };
    class AVAR(O_Static_Designator_02_F_CASE): AVAR(case_base) {
        scope = 2;
        displayName = "Remote Designator (OPFOR)";
        picture = "\A3\Static_F_Mark\Designator_02\Data\UI\map_Designator_02_CA.paa";
        AVAR(drone) = "O_Static_Designator_02_F";
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 50;
        };
    };
};
