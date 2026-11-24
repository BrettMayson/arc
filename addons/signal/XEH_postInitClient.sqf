#include "script_component.hpp"

GVAR(uav) = objNull;
GVAR(pfh) = -1;

GVAR(ppResolution) = ppEffectCreate ["Resolution", 2012];

["ACE_controlledUAV", {
    params ["_uav"];
    if (isNull _uav) exitWith {
        GVAR(uav) = objNull;
        if (GVAR(pfh) != -1) then {
            [GVAR(pfh)] call CBA_fnc_removePerFrameHandler;
            GVAR(pfh) = -1;
        };
        GVAR(ppResolution) ppEffectEnable false;
    };
    // Changing seats in the same UAV
    if (_uav isEqualTo GVAR(uav)) exitWith {};

    // New UAV, which may be a direct switch from another one
    GVAR(uav) = _uav;
    if (getText (configOf _uav >> QAVAR(mode)) == "SAT") then {
        AVAR(mode) = "SAT";
        GVAR(satCacheExpiry) = 0;
    } else {
        AVAR(mode) = "LOS";
    };
    AVAR(currentSignal) = 1;
    if (GVAR(pfh) == -1) then {
        GVAR(pfh) = [{ call FUNC(pfh) }, 0.25] call CBA_fnc_addPerFrameHandler;
    };
}] call CBA_fnc_addEventHandler;
