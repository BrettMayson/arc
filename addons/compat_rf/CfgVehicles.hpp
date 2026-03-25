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

    class UAV_RC40_Base_Sensor_RF;
    class B_UAV_RC40_SENSOR_RF: UAV_RC40_Base_Sensor_RF {
        AVAR(magazine) = QGVAR(RC40_scout);
    };
    class O_UAV_RC40_SENSOR_RF: UAV_RC40_Base_Sensor_RF {
        AVAR(magazine) = QGVAR(RC40_scout);
    };
    class I_UAV_RC40_SENSOR_RF: UAV_RC40_Base_Sensor_RF {
        AVAR(magazine) = QGVAR(RC40_scout);
    };
    class C_UAV_RC40_SENSOR_RF: UAV_RC40_Base_Sensor_RF {
        AVAR(magazine) = QGVAR(RC40_scout);
    };

    class UAV_RC40_Base_HE_RF;
    class B_UAV_RC40_HE_RF: UAV_RC40_Base_HE_RF {
        AVAR(magazine) = QGVAR(RC40_HE);
    };
    class O_UAV_RC40_HE_RF: UAV_RC40_Base_HE_RF {
        AVAR(magazine) = QGVAR(RC40_HE);
    };
    class I_UAV_RC40_HE_RF: UAV_RC40_Base_HE_RF {
        AVAR(magazine) = QGVAR(RC40_HE);
    };
    class C_UAV_RC40_HE_RF: UAV_RC40_Base_HE_RF {
        AVAR(magazine) = QGVAR(RC40_HE);
    };

    class UAV_RC40_Base_SmokeBlue_RF;
    class B_UAV_RC40_SmokeBlue_RF: UAV_RC40_Base_SmokeBlue_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeBlue);
    };
    class O_UAV_RC40_SmokeBlue_RF: UAV_RC40_Base_SmokeBlue_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeBlue);
    };
    class I_UAV_RC40_SmokeBlue_RF: UAV_RC40_Base_SmokeBlue_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeBlue);
    };
    class C_UAV_RC40_SmokeBlue_RF: UAV_RC40_Base_SmokeBlue_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeBlue);
    };

    class UAV_RC40_Base_SmokeGreen_RF;
    class B_UAV_RC40_SmokeGreen_RF: UAV_RC40_Base_SmokeGreen_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeGreen);
    };
    class O_UAV_RC40_SmokeGreen_RF: UAV_RC40_Base_SmokeGreen_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeGreen);
    };
    class I_UAV_RC40_SmokeGreen_RF: UAV_RC40_Base_SmokeGreen_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeGreen);
    };
    class C_UAV_RC40_SmokeGreen_RF: UAV_RC40_Base_SmokeGreen_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeGreen);
    };

    class UAV_RC40_Base_SmokeOrange_RF;
    class B_UAV_RC40_SmokeOrange_RF: UAV_RC40_Base_SmokeOrange_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeOrange);
    };
    class O_UAV_RC40_SmokeOrange_RF: UAV_RC40_Base_SmokeOrange_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeOrange);
    };
    class I_UAV_RC40_SmokeOrange_RF: UAV_RC40_Base_SmokeOrange_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeOrange);
    };
    class C_UAV_RC40_SmokeOrange_RF: UAV_RC40_Base_SmokeOrange_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeOrange);
    };

    class UAV_RC40_Base_SmokeRed_RF;
    class B_UAV_RC40_SmokeRed_RF: UAV_RC40_Base_SmokeRed_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeRed);
    };
    class O_UAV_RC40_SmokeRed_RF: UAV_RC40_Base_SmokeRed_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeRed);
    };
    class I_UAV_RC40_SmokeRed_RF: UAV_RC40_Base_SmokeRed_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeRed);
    };
    class C_UAV_RC40_SmokeRed_RF: UAV_RC40_Base_SmokeRed_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeRed);
    };

    class UAV_RC40_Base_SmokeWhite_RF;
    class B_UAV_RC40_SmokeWhite_RF: UAV_RC40_Base_SmokeWhite_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeWhite);
    };
    class O_UAV_RC40_SmokeWhite_RF: UAV_RC40_Base_SmokeWhite_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeWhite);
    };
    class I_UAV_RC40_SmokeWhite_RF: UAV_RC40_Base_SmokeWhite_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeWhite);
    };
    class C_UAV_RC40_SmokeWhite_RF: UAV_RC40_Base_SmokeWhite_RF {
        AVAR(magazine) = QGVAR(RC40_SmokeWhite);
    };
};
