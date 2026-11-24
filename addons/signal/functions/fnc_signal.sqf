#include "..\script_component.hpp"

params ["_uav", "_operator"];

private _freq = _uav getVariable [QAVAR(freq), DEFAULT_FREQ];
private _power = _uav getVariable [QAVAR(power), DEFAULT_POWER];

// The terminal is held at wrist height
private _operatorPos = getPosASL _operator;
private _terminalHeight = (_operator selectionPosition "lwrist") select 2;
if (_terminalHeight <= 0) then { _terminalHeight = 1.3; };
_operatorPos set [2, (_operatorPos select 2) + _terminalHeight];

private _uavPos = getPosASL _uav;
_uavPos set [2, (_uavPos select 2) + 0.1]; // Antennas don't rest on the ground

private _rf = [_freq, _power, _uavPos, _operatorPos] call FUNC(calc);
private _Lb = _rf select 1;

private _noiseFloor = -100;
private _snr = _Lb - _noiseFloor;

private _signal = 1 min (0 max (_snr / 30));

private _res = [_freq, _snr] call FUNC(effectiveRes);

[_signal, _res]
