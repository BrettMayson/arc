#include "..\script_component.hpp"

params ["_args", "_handle"];

private _uav = GVAR(uav);

if (isNull _uav) exitWith {
    [_handle] call CBA_fnc_removePerFrameHandler;
    GVAR(pfh) = -1;
    GVAR(ppResolution) ppEffectEnable false;
};

(if (AVAR(mode) == "SAT") then {
    private _clarity = [ace_player] call FUNC(satError);
    [
        1 min (linearConversion [0, 4, _clarity, 1, 0, true] + random 0.05),
        1080
    ]
} else {
    [_uav, ace_player] call FUNC(signal)
}) params ["_signal", "_maxRes"];

GVAR(ppResolution) ppEffectAdjust [_maxRes];
GVAR(ppResolution) ppEffectCommit 0.15;
GVAR(ppResolution) ppEffectEnable true;
AVAR(currentSignal) = _signal;
if (_signal == 0) then {
    // Try the lowest frequency before losing the connection
    private _lowestFreq = selectMin (_uav getVariable [QAVAR(freqOptions), DEFAULT_FREQ_OPTIONS]);
    private _currentFreq = _uav getVariable [QAVAR(freq), DEFAULT_FREQ];
    if (AVAR(mode) == "LOS" && {_currentFreq != _lowestFreq}) then {
        _uav setVariable [QAVAR(freq), _lowestFreq, true];
    } else {
        ace_player remoteControl objNull;
    };
};

if (AVAR(mode) == "LOS" && {_uav getVariable [QAVAR(autoAdjust), false]} && {GVAR(nextSignalAdjust) < time}) then {
    GVAR(nextSignalAdjust) = time + 3;
    [_uav, _signal] call FUNC(adjust);
};
