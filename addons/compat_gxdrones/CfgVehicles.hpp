class CfgVehicles {
    class Helicopter_Base_F;
    class GX_BLACKHORNET_UAV_BASE: Helicopter_Base_F {
        AVAR(mode) = "LOS";
        AVAR(power)[] = { 100, 200, 300, 400, 600, 800, 1200, 1800 };
        AVAR(defaultPower) = 100;
        AVAR(freq)[] = { 433, 915, 1200, 2400, 5800 };
        AVAR(defaultFreq) = 1200;
        AVAR(noBattery) = 1;
        AVAR(isr) = QEFUNC(isr,vanilla);
    };
    class GX_DRONE40_UAV_BASE: Helicopter_Base_F {
        AVAR(mode) = "LOS";
        AVAR(power)[] = { 100, 200, 300 };
        AVAR(defaultPower) = 100;
        AVAR(freq)[] = { 2400, 5800 };
        AVAR(defaultFreq) = 2400;
        AVAR(noBattery) = 1;
    };
    class GX_MQ8B_UAV_BASE: Helicopter_Base_F {
        AVAR(mode) = "SAT";
        AVAR(noBattery) = 1;
        AVAR(isr) = QEFUNC(isr,vanilla);
    };
    class Car_F;
    class GX_HONEYBADGER_UGV_BASE: Car_F {
        AVAR(mode) = "SAT";
        AVAR(noBattery) = 1;
        AVAR(isr) = QEFUNC(isr,vanilla);
    };
    class StaticMortar;
    class GX_HUNTER_SP_LAUNCHER_BASE: StaticMortar {
        AVAR(mode) = "SAT";
        AVAR(noBattery) = 1;
        AVAR(isr) = QEFUNC(isr,vanilla);
    };
    class Plane_Base_F;
    class GX_HUNTER_SP_UAV_BASE: Plane_Base_F {
        AVAR(mode) = "SAT";
        AVAR(noBattery) = 1;
        AVAR(isr) = QEFUNC(isr,vanilla);
    };
    class GX_RQ11B_UAV_BASE: Plane_Base_F {
        AVAR(mode) = "LOS";
        AVAR(power)[] = { 100, 200, 300, 400, 600, 800, 1200, 1800 };
        AVAR(defaultPower) = 100;
        AVAR(freq)[] = { 433, 915, 1200, 2400, 5800 };
        AVAR(defaultFreq) = 1200;
        AVAR(noBattery) = 1;
        AVAR(isr) = QEFUNC(isr,vanilla);
    };
    class Tank_F;
    class GX_THEMIS_UGV_BASE: Tank_F {
        AVAR(mode) = "SAT";
        AVAR(noBattery) = 1;
        AVAR(isr) = QEFUNC(isr,vanilla);
    };
};
