class CfgMagazines {
    class CA_Magazine;

    class AVAR(battery): CA_Magazine {
        scope = 2;
        author = "ARC";
        displayName = "UAV Battery";
        model = "\z\ace\addons\logistics_uavbattery\data\ace_battery.p3d";
        picture = "\z\ace\addons\logistics_uavbattery\ui\UAV_battery_ca.paa";
        descriptionShort = "A UAV battery";
        ACE_isUnique = 1;
        ACE_asItem = 1;
        ace_disableRepacking = 1;
        count = 100;
        mass = 20;
    };

    class AVAR(base): CA_Magazine {
        author = "ARC";
        count = 1;
        mass = 500;
        ACE_isUnique = 1;
        ace_disableRepacking = 1;

        model = "\A3\Structures_F_Heli\Items\Luggage\PlasticCase_01_small_F.p3d";
        hiddenSelections[] = {"Camo","Camo2"};
        hiddenSelectionsTextures[] = {"a3\Props_F_Enoch\Military\Supplies\Data\PlasticCase_01_black_CO.paa"};
        editorPreview = "\A3\EditorPreviews_F_Enoch\Data\CfgVehicles\Land_PlasticCase_01_small_black_F.jpg";
    };
};
