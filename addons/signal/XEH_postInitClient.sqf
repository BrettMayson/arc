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
    };
    if ((!isNull _uav) && isNull GVAR(uav)) then {
        GVAR(uav) = _uav;
        private _config = configOf _uav;
        private _mode = getText (_config >> QAVAR(mode));
        if (_mode isEqualTo "SAT") then {
            AVAR(mode) = "SAT";
            GVAR(satCacheExpiry) = 0;
        } else {
            AVAR(mode) = "LOS";
        };
        GVAR(pfh) = [{ call FUNC(pfh)}, 0.25] call CBA_fnc_addPerFrameHandler;
    };
}] call CBA_fnc_addEventHandler;
