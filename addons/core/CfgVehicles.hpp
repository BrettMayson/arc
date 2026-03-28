class CfgVehicles {
    class Weapon_Bag_Base;
    class AVAR(uav_bag_base): Weapon_Bag_Base {
        author = "ARC";
        mass = 80;
        maximumLoad = 600;
        hiddenSelections[] = {"Camo"};
        hiddenSelectionsMaterials[] = {"\A3\Supplies_F_Orange\Bags\Data\UAV_backpack.rvmat"};
        model = "\A3\Drones_F\Weapons_F_Gamma\Ammoboxes\Bags\UAV_backpack_F.p3d";
    };

    class Man;
    class CAManBase: Man {
        class ACE_SelfActions {
            class ACE_Equipment {
                class AVAR(deploy) {
                    displayName = CSTRING(UAV_Deploy);
                    condition = QUOTE([_player] call FUNC(generic_deployCondition));
                    insertChildren = QUOTE([_player] call FUNC(generic_deployInsertChildren));
                    statement = "";
                };
            };
        };
    };
};
