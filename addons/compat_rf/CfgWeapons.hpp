#if EXP_THROWABLE
class CfgWeapons {
    class GrenadeLauncher;
    class Throw: GrenadeLauncher {
        muzzles[] += {QGVAR(RC40)};

        class ThrowMuzzle;
        class GVAR(RC40): ThrowMuzzle {
            magazines[] = {
                QGVAR(RC40_HE),
                QGVAR(RC40_scout),
            };
        };
    };
};
#endif
