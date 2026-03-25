class CfgVehicles {
    class Air;
    class Helicopter: Air {
        class ACE_Actions {
            class ACE_MainActions;
        };
    };
    class Helicopter_Base_F: Helicopter {
        class ACE_Actions: ACE_Actions {
            class ACE_MainActions: ACE_MainActions {};
        };
    };

    // Bustard
    class UAV_02_Base_lxWS: Helicopter_Base_F {
        class EventHandlers;
        class ACE_Actions: ACE_Actions {
            class ACE_MainActions: ACE_MainActions {
                class AVAR(pack) {
                    displayName = "Pack";
                    distance = 4;
                    condition = QUOTE([ARR_2(_player,_target)] call FUNC(bustard_packCondition));
                    statement = QUOTE([ARR_2(_player,_target)] call FUNC(generic_pack));
                };
                #include "..\core\actions\battery.hpp"
            };
            class AVAR(arm) {
                displayName = "Arm";
                distance = 4;
                condition = QUOTE([ARR_2(_player,_target)] call FUNC(bustard_armCondition));
                statement = QUOTE([ARR_2(_player,_target)] call FUNC(bustard_arm));
                modifierFunction = QUOTE(call FUNC(bustard_armModify));
                position = "[1.88926e-006,6.80166e-005,-0.237018]";
            };
            class AVAR(disarm) {
                displayName = "Disarm";
                distance = 4;
                condition = QUOTE([ARR_2(_player,_target)] call FUNC(bustard_disarmCondition));
                statement = QUOTE([ARR_2(_player,_target)] call FUNC(bustard_disarm));
                modifierFunction = QUOTE(call FUNC(bustard_disarmModify));
                position = "[1.88926e-006,6.80166e-005,-0.237018]";
            };
        };
    };
    class B_UAV_02_lxWS: UAV_02_Base_lxWS {
        AVAR(case) = QGVAR(B_UAV_02_lxWS_CASE);
        delete assembleInfo;
        class EventHandlers: EventHandlers {
            init = QUOTE([_this#0] call FUNC(bustard_init));
            killed = "_this call (uinamespace getvariable 'BIS_fnc_effectKilled');";
        };
    };
    class I_UAV_02_lxWS: UAV_02_Base_lxWS {
        AVAR(case) = QGVAR(I_UAV_02_lxWS_CASE);
        delete assembleInfo;
        class EventHandlers: EventHandlers {
            init = QUOTE([_this#0] call FUNC(bustard_init));
            killed = "_this call (uinamespace getvariable 'BIS_fnc_effectKilled');";
        };
    };
    class O_UAV_02_lxWS: UAV_02_Base_lxWS {
        AVAR(case) = QGVAR(O_UAV_02_lxWS_CASE);
        delete assembleInfo;
        class EventHandlers: EventHandlers {
            init = QUOTE([_this#0] call FUNC(bustard_init));
            killed = "_this call (uinamespace getvariable 'BIS_fnc_effectKilled');";
        };
    };

    // IED UAV
    class UAV_02_IED_Base_lxWS: UAV_02_Base_lxWS {
        class EventHandlers: EventHandlers {};
        class ACE_Actions: ACE_Actions {
            class ACE_MainActions: ACE_MainActions {
                class AVAR(pack): AVAR(pack) {
                    condition = QUOTE([ARR_2(_player,_target)] call FUNC(ied_packCondition));
                };
            };
            class AVAR(arm) {};
            class AVAR(disarm) {};
            #define PYLON_Z -0.28
            class AVAR(arm1) {
                displayName = "Arm 1";
                distance = 4;
                condition = QUOTE([ARR_3(_player,_target,1)] call FUNC(ied_armCondition));
                position = QUOTE([ARR_3(0.0351628,0.0354007,PYLON_Z)]);
                insertChildren = QUOTE([ARR_3(_player,_target,1)] call FUNC(ied_armInsertChildren));
            };
            class AVAR(arm2): AVAR(arm1) {
                displayName = "Arm 2";
                condition = QUOTE([ARR_3(_player,_target,2)] call FUNC(ied_armCondition));
                position = QUOTE([ARR_3(-0.0351529,0.0354007,PYLON_Z)]);
                insertChildren = QUOTE([ARR_3(_player,_target,2)] call FUNC(ied_armInsertChildren));
            };
            class AVAR(arm3): AVAR(arm1) {
                displayName = "Arm 3";
                condition = QUOTE([ARR_3(_player,_target,3)] call FUNC(ied_armCondition));
                position = QUOTE([ARR_3(0.0351628,-0.0354006,PYLON_Z)]);
                insertChildren = QUOTE([ARR_3(_player,_target,3)] call FUNC(ied_armInsertChildren));
            };
            class AVAR(arm4): AVAR(arm1) {
                displayName = "Arm 4";
                condition = QUOTE([ARR_3(_player,_target,4)] call FUNC(ied_armCondition));
                position = QUOTE([ARR_3(-0.0351529,-0.0354006,PYLON_Z)]);
                insertChildren = QUOTE([ARR_3(_player,_target,4)] call FUNC(ied_armInsertChildren));
            };
            class AVAR(disarm1): AVAR(arm1) {
                displayName = "Disarm 1";
                condition = QUOTE(([ARR_3(_player,_target,1)] call FUNC(ied_disarmCondition)));
                statement = QUOTE([ARR_3(_player,_target,1)] call FUNC(ied_disarm));
                insertChildren = "";
            };
            class AVAR(disarm2): AVAR(arm2) {
                displayName = "Disarm 2";
                condition = QUOTE(([ARR_3(_player,_target,2)] call FUNC(ied_disarmCondition)));
                statement = QUOTE([ARR_3(_player,_target,2)] call FUNC(ied_disarm));
                insertChildren = "";
            };
            class AVAR(disarm3): AVAR(arm3) {
                displayName = "Disarm 3";
                condition = QUOTE(([ARR_3(_player,_target,3)] call FUNC(ied_disarmCondition)));
                statement = QUOTE([ARR_3(_player,_target,3)] call FUNC(ied_disarm));
                insertChildren = "";
            };
            class AVAR(disarm4): AVAR(arm4) {
                displayName = "Disarm 4";
                condition = QUOTE(([ARR_3(_player,_target,4)] call FUNC(ied_disarmCondition)));
                statement = QUOTE([ARR_3(_player,_target,4)] call FUNC(ied_disarm));
                insertChildren = "";
            };
        };
    };
    class B_G_UAV_02_IED_lxWS: UAV_02_IED_Base_lxWS {
        AVAR(case) = QGVAR(B_UAV_02_IED_lxWS_CASE);
        delete assembleInfo;
        class EventHandlers: EventHandlers {
            init = QUOTE([_this#0] call FUNC(ied_init));
            killed = "_this call (uinamespace getvariable 'BIS_fnc_effectKilled');";
        };
    };
    class I_G_UAV_02_IED_lxWS: UAV_02_IED_Base_lxWS {
        AVAR(case) = QGVAR(I_G_UAV_02_IED_lxWS_CASE);
        delete assembleInfo;
        class EventHandlers: EventHandlers {
            init = QUOTE([_this#0] call FUNC(ied_init));
            killed = "_this call (uinamespace getvariable 'BIS_fnc_effectKilled');";
        };
    };
    class O_G_UAV_02_IED_lxWS: UAV_02_IED_Base_lxWS {
        AVAR(case) = QGVAR(O_G_UAV_02_IED_lxWS_CASE);
        delete assembleInfo;
        class EventHandlers: EventHandlers {
            init = QUOTE([_this#0] call FUNC(ied_init));
            killed = "_this call (uinamespace getvariable 'BIS_fnc_effectKilled');";
        };
    };

    // Falcon
    class UAV_03_base_F: Helicopter_Base_F {
        AVAR(mode) = "SAT";
    };

    /// YABHON
    class UAV;
    class UAV_02_base_F: UAV {
        AVAR(mode) = "SAT";
    };

    // Sentinel
    class UAV_05_Base_F: UAV {
        AVAR(mode) = "SAT";
    };
};
