class CfgMagazines {
    class 1Rnd_RC40_shell_RF;
    class GVAR(RC40_scout): 1Rnd_RC40_shell_RF {
        count = 100;
        type = 256;
        initSpeed = 25;
        GVAR(drone) = "B_UAV_RC40_SENSOR_RF";
    };
    #if EXP_THROWABLE
    class GVAR(RC40_scout_gl): 1Rnd_RC40_shell_RF {
        count = 100;
        GVAR(drone) = "B_UAV_RC40_SENSOR_GL_RF";
    };
    #endif

    class 1Rnd_RC40_HE_shell_RF;
    class GVAR(RC40_HE): 1Rnd_RC40_HE_shell_RF {
        count = 100;
        type = 256;
        initSpeed = 25;
        GVAR(drone) = "B_UAV_RC40_HE_RF";
    };
    #if EXP_THROWABLE
    class GVAR(RC40_HE_gl): 1Rnd_RC40_HE_shell_RF {
        count = 100;
        GVAR(drone) = "B_UAV_RC40_HE_GL_RF";
    };
    #endif
    
    class 1Rnd_RC40_SmokeBlue_shell_RF;
    class GVAR(RC40_SmokeBlue): 1Rnd_RC40_SmokeBlue_shell_RF {
        count = 100;
        GVAR(drone) = "B_UAV_RC40_SmokeBlue_RF";
    };
    class 1Rnd_RC40_SmokeGreen_shell_RF;
    class GVAR(RC40_SmokeGreen): 1Rnd_RC40_SmokeGreen_shell_RF {
        count = 100;
        GVAR(drone) = "B_UAV_RC40_SmokeGreen_RF";
    };
    class 1Rnd_RC40_SmokeOrange_shell_RF;
    class GVAR(RC40_SmokeOrange): 1Rnd_RC40_SmokeOrange_shell_RF {
        count = 100;
        GVAR(drone) = "B_UAV_RC40_SmokeOrange_RF";
    };
    class 1Rnd_RC40_SmokeRed_shell_RF;
    class GVAR(RC40_SmokeRed): 1Rnd_RC40_SmokeRed_shell_RF {
        count = 100;
        GVAR(drone) = "B_UAV_RC40_SmokeRed_RF";
    };
    class 1Rnd_RC40_SmokeWhite_shell_RF;
    class GVAR(RC40_SmokeWhite): 1Rnd_RC40_SmokeWhite_shell_RF {
        count = 100;
        GVAR(drone) = "B_UAV_RC40_SmokeWhite_RF";
    };
};
