#include "..\script_component.hpp"

params ["_args", "_handle"];

private _uav = GVAR(uav);

if (isNull _uav) exitWith {
    [_handle] call CBA_fnc_removePerFrameHandler;
    GVAR(ppResolution) ppEffectEnable false;
};

private _freq = _uav getVariable [QAVAR(freq), 1300];
private _power = _uav getVariable [QAVAR(power), 800];

(if (AVAR(mode) == "SAT") then {
    private _clarity = [ace_player] call FUNC(satError);
    [
        1 min (linearConversion [0, 4, _clarity, 1, 0, true] + random 0.05),
        1080
    ]
} else {
    private _distance = ace_player distance _uav;

    if (_distance < 8) exitWith {
        GVAR(ppResolution) ppEffectEnable false;
        [1, [_freq] call FUNC(maxRes)]
    };

    private _playerPos = getPosASL ace_player;
    private _terminalOffset = (ace_player selectionPosition "lwrist") select 0;
    _playerPos set [2, (_playerPos select 2) + _terminalOffset];

    private _uavPos = getPosASL _uav;
    _uavPos set [2, (_uavPos select 2) + 0.1]; // Antennas don't rest on the ground

    private _rf = [_freq, _power, _uavPos, _playerPos] call FUNC(calc);
    private _Lb = _rf select 1;

    private _noiseFloor = -100;
    private _snr = _Lb - _noiseFloor;

    private _signal = 1 min (0 max (_snr / 30));

    private _res = [_freq, _snr] call FUNC(effectiveRes);

    [_signal, _res]
}) params ["_signal", "_maxRes"];

GVAR(ppResolution) ppEffectAdjust [_maxRes];
GVAR(ppResolution) ppEffectCommit 0.15;
GVAR(ppResolution) ppEffectEnable true;
AVAR(currentSignal) = _signal;
// TODO remove after arma 2.22
if ((productVersion select 2) < 222) then {
    equipmentDisabled _uav params ["", "_ti"];
    private _desired = _signal < GVAR(disableTISignal);
    if (_desired != _ti) then {
        _uav disableTIEquipment _desired;
    };
};
if (_signal == 0) then {
    // Change the frequency to the lowest frequency
    private _freqOptions = _uav getVariable [QAVAR(freqOptions), []];
    private _currentFreq = _uav getVariable [QAVAR(freq), 1300];
    private _lowestFreq = _freqOptions select 0;
    if (_currentFreq != _lowestFreq) then {
        _uav setVariable [QAVAR(freq), _lowestFreq, true];
    } else {
        ace_player remoteControl objNull;
    };
};

if (AVAR(mode) == "LOS" && _uav getVariable [QAVAR(autoAdjust), false] && GVAR(nextSignalAdjust) < time) then {
    GVAR(nextSignalAdjust) = time + 3;
    [_uav, _signal] call FUNC(adjust);
};
