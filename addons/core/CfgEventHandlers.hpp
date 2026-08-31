class Extended_PreStart_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_FILE(XEH_preStart));
    };
};
class Extended_PreInit_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_FILE(XEH_preInit));
    };
};
class Extended_Init_EventHandlers {
    class AllVehicles {
        class ADDON {
            init = QUOTE(call FUNC(init));
        };
    };
};
