class CfgMagazines {
    class CA_Magazine;
    class 1Rnd_RC40_shell_RF: CA_Magazine {
        AVAR(drone) = "B_UAV_RC40_SENSOR_RF";
        AVAR(deployType) = "mini";
        AVAR(hidePercentage) = 1;
    };
    class GVAR(RC40_scout): 1Rnd_RC40_shell_RF {
        count = 100;
        type = 256;
        initSpeed = 25;
        AVAR(hidePercentage) = 0;
    };
    #if EXP_THROWABLE
    class GVAR(RC40_scout_gl): 1Rnd_RC40_shell_RF {
        count = 100;
        AVAR(drone) = "B_UAV_RC40_SENSOR_GL_RF";
        AVAR(deployType) = "mini";
        AVAR(hidePercentage) = 0;
    };
    #endif

    class 1Rnd_RC40_HE_shell_RF: 1Rnd_RC40_shell_RF {
        AVAR(drone) = "B_UAV_RC40_HE_RF";
        AVAR(hidePercentage) = 1;
    };
    class GVAR(RC40_HE): 1Rnd_RC40_HE_shell_RF {
        count = 100;
        type = 256;
        initSpeed = 25;
        AVAR(hidePercentage) = 0;
    };
    #if EXP_THROWABLE
    class GVAR(RC40_HE_gl): 1Rnd_RC40_HE_shell_RF {
        count = 100;
        AVAR(drone) = "B_UAV_RC40_HE_GL_RF";
        AVAR(deployType) = "mini";
        AVAR(hidePercentage) = 0;
    };
    #endif
    
    class 1Rnd_RC40_SmokeBlue_shell_RF: 1Rnd_RC40_shell_RF {
        AVAR(drone) = "B_UAV_RC40_SmokeBlue_RF";
        AVAR(hidePercentage) = 1;
    };
    class GVAR(RC40_SmokeBlue): 1Rnd_RC40_SmokeBlue_shell_RF {
        count = 100;
        AVAR(hidePercentage) = 0;
    };
    class 1Rnd_RC40_SmokeGreen_shell_RF: 1Rnd_RC40_shell_RF {
        AVAR(drone) = "B_UAV_RC40_SmokeGreen_RF";
        AVAR(hidePercentage) = 1;
    };
    class GVAR(RC40_SmokeGreen): 1Rnd_RC40_SmokeGreen_shell_RF {
        count = 100;
        AVAR(hidePercentage) = 0;
    };
    class 1Rnd_RC40_SmokeOrange_shell_RF: 1Rnd_RC40_shell_RF {
        AVAR(drone) = "B_UAV_RC40_SmokeOrange_RF";
        AVAR(hidePercentage) = 1;
    };
    class GVAR(RC40_SmokeOrange): 1Rnd_RC40_SmokeOrange_shell_RF {
        count = 100;
        AVAR(hidePercentage) = 0;
    };
    class 1Rnd_RC40_SmokeRed_shell_RF: 1Rnd_RC40_shell_RF {
        AVAR(drone) = "B_UAV_RC40_SmokeRed_RF";
        AVAR(hidePercentage) = 1;
    };
    class GVAR(RC40_SmokeRed): 1Rnd_RC40_SmokeRed_shell_RF {
        count = 100;
        AVAR(hidePercentage) = 0;
    };
    class 1Rnd_RC40_SmokeWhite_shell_RF: 1Rnd_RC40_shell_RF {
        AVAR(drone) = "B_UAV_RC40_SmokeWhite_RF";
        AVAR(hidePercentage) = 1;
    };
    class GVAR(RC40_SmokeWhite): 1Rnd_RC40_SmokeWhite_shell_RF {
        count = 100;
        AVAR(hidePercentage) = 0;
    };
};
