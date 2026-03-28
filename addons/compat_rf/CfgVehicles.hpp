class CfgVehicles {
    class Helicopter_Base_F;
    class UAV_01_base_F: Helicopter_Base_F {
        class ACE_Actions {
            class ACE_MainActions;
        };
    };
    class UAV_RC40_Base_RF: UAV_01_base_F {
        AVAR(singleUse) = 1;
        AVAR(deployTime) = 1;
        AVAR(deployType) = "mini";
        AVAR(mode) = "LOS";
        AVAR(power)[] = { 100, 200, 300 };
        AVAR(defaultPower) = 100;
        AVAR(freq)[] = { 2400, 5800 };
        AVAR(defaultFreq) = 2400;
        class ACE_Actions: ACE_Actions {
            class ACE_MainActions: ACE_MainActions {
                class AVAR(grab) {
                    displayName = "Grab";
                    distance = 4;
                    condition = QUOTE([ARR_2(_player,_target)] call FUNC(mini_grabCondition));
                    statement = QUOTE([ARR_2(_player,_target)] call FUNC(mini_grab));
                };
            };
        };
    };

    class UAV_RC40_Base_Sensor_RF: UAV_RC40_Base_RF {
        AVAR(magazine) = "1Rnd_RC40_shell_RF";
    };
    class UAV_RC40_Base_HE_RF: UAV_RC40_Base_RF {
        AVAR(magazine) = "1Rnd_RC40_HE_shell_RF";
    };
    class UAV_RC40_Base_SmokeBlue_RF: UAV_RC40_Base_RF {
        AVAR(magazine) = "1Rnd_RC40_SmokeBlue_shell_RF";
    };
    class UAV_RC40_Base_SmokeGreen_RF: UAV_RC40_Base_RF {
        AVAR(magazine) = "1Rnd_RC40_SmokeGreen_shell_RF";
    };
    class UAV_RC40_Base_SmokeOrange_RF: UAV_RC40_Base_RF {
        AVAR(magazine) = "1Rnd_RC40_SmokeOrange_shell_RF";
    };
    class UAV_RC40_Base_SmokeRed_RF: UAV_RC40_Base_RF {
        AVAR(magazine) = "1Rnd_RC40_SmokeRed_shell_RF";
    };
    class UAV_RC40_Base_SmokeWhite_RF: UAV_RC40_Base_RF {
        AVAR(magazine) = "1Rnd_RC40_SmokeWhite_shell_RF";
    };
};
