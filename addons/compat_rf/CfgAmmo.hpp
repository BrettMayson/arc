class CfgAmmo {
    class SmokeShell;
    class G_40mm_Smoke: SmokeShell {
        class EventHandlers;
    };
    class G_RC40_fake_RF: G_40mm_Smoke {
        class Eventhandlers: EventHandlers {
            class lxRF_DeployRC40 {
                init = QUOTE(_this call FUNC(gl_deploy));
            };
        };
    };
};
