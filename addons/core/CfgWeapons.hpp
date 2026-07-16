class CfgWeapons {
    class CBA_MiscItem;
    class CBA_MiscItem_ItemInfo;
    class AVAR(case_base): CBA_MiscItem {
        author = "ARC";
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 40;
        };

        model = "\A3\Structures_F_Heli\Items\Luggage\PlasticCase_01_small_F.p3d";
        hiddenSelections[] = {"Camo","Camo2"};
        hiddenSelectionsTextures[] = {"a3\Props_F_Enoch\Military\Supplies\Data\PlasticCase_01_black_CO.paa"};
        editorPreview = "\A3\EditorPreviews_F_Enoch\Data\CfgVehicles\Land_PlasticCase_01_small_black_F.jpg";
    };

    class ACE_ItemCore;
    class ACE_UAVBattery: ACE_ItemCore {
        scope = 1;
        scopeArsenal = 1;
    };
};
