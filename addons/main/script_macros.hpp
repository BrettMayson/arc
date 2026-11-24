#include "\x\cba\addons\main\script_macros_common.hpp"

// #define DEBUG_MODE_FULL
// #define DISABLE_COMPILE_CACHE

#define DFUNC(var1) TRIPLES(ADDON,fnc,var1)
#define DEFUNC(var1,var2) TRIPLES(DOUBLES(PREFIX,var1),fnc,var2)

#ifdef DISABLE_COMPILE_CACHE
    #undef PREP
    #define PREP(fncName) DFUNC(fncName) = compile preprocessFileLineNumbers QPATHTOF(functions\DOUBLES(fnc,fncName).sqf)
#else
    #undef PREP
    #define PREP(fncName) [QPATHTOF(functions\DOUBLES(fnc,fncName).sqf), QFUNC(fncName)] call CBA_fnc_compileFunction
#endif

#define AVAR(name) DOUBLES(PREFIX,name)
#define QAVAR(name) QUOTE(AVAR(name))

#define DEFAULT_DISTANCE 4

// Signal defaults, used when a UAV has no ARC config
#define DEFAULT_FREQ 1200
#define DEFAULT_POWER 800
#define DEFAULT_FREQ_OPTIONS [433, 915, 1200, 2400, 5800]
#define DEFAULT_POWER_OPTIONS [200, 300, 400, 600, 800, 1200, 1800]

// ACE3 reference macros
#define ACE_PREFIX ace

#define ACEGVAR(module,var)         TRIPLES(ACE_PREFIX,module,var)
#define QACEGVAR(module,var)        QUOTE(ACEGVAR(module,var))

#define ACEFUNC(module,function)    TRIPLES(DOUBLES(ACE_PREFIX,module),fnc,function)
#define QACEFUNC(module,function)   QUOTE(ACEFUNC(module,function))

#define ACELSTRING(module,string)   QUOTE(TRIPLES(STR,DOUBLES(ACE_PREFIX,module),string))
#define ACECSTRING(module,string)   QUOTE(TRIPLES($STR,DOUBLES(ACE_PREFIX,module),string))
