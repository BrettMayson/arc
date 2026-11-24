#include "script_component.hpp"

uiNamespace setVariable [QGVAR(controls), createHashMap];

GVAR(cameraChangedEH) = ["cameraView", {
    params ["", "_new", "_old"];
    if (_old == "GUNNER") then {
        if !(isNil QGVAR(pfh)) then {
            [GVAR(pfh)] call CBA_fnc_removePerFrameHandler;
            GVAR(pfh) = nil;
        };
    };
    if (_new == "GUNNER" && {call FUNC(isISR)}) then {
        private _vehicle = getConnectedUAV ace_player;
        if (isNull _vehicle) then {
            _vehicle = vehicle ace_player;
        };
        private _function = getText (configOf _vehicle >> QAVAR(isr));
        if (_function isEqualTo "" || {isNil _function}) then {
            _function = QFUNC(vanilla);
        };
        GVAR(vehicleFunction) = compile format ["_this call %1", _function];
        [_vehicle, "setup", []] call GVAR(vehicleFunction);
        GVAR(menuStack) = [];
        GVAR(menuTargetOpen) = false;
        GVAR(pfh) = [FUNC(pfh)] call CBA_fnc_addPerFrameHandler;
    };
    if (_new == "INTERNAL") then {
        uiNamespace setVariable [QGVAR(controls), createHashMap];
    };
}, true] call CBA_fnc_addPlayerEventHandler;
