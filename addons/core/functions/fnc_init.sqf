#include "..\script_component.hpp"

params ["_uav"];

if !(unitIsUAV _uav) exitWith {};

private _config = configOf _uav;
if !(_uav getVariable [QAVAR(init), false]) then {
    _uav setVariable [QAVAR(init), true];
    _uav setVariable [QAVAR(autoAdjust), true];
    private _defaultFreq = getNumber (_config >> QAVAR(defaultFreq));
    if (_defaultFreq isNotEqualTo 0) then {
        _uav setVariable [QAVAR(freq), _defaultFreq];
    };
    private _defaultPower = getNumber (_config >> QAVAR(defaultPower));
    if (_defaultPower isNotEqualTo 0) then {
        _uav setVariable [QAVAR(power), _defaultPower];
    };
    private _defaultFreqOptions = getArray (_config >> QAVAR(freq));
    if (_defaultFreqOptions isNotEqualTo []) then {
        _uav setVariable [QAVAR(freqOptions), _defaultFreqOptions];
    };
    private _defaultPowerOptions = getArray (_config >> QAVAR(power));
    if (_defaultPowerOptions isNotEqualTo []) then {
        _uav setVariable [QAVAR(powerOptions), _defaultPowerOptions];
    };
    private _mode = getNumber (_config >> QAVAR(mode));
    _uav setVariable [QAVAR(mode), _mode];
};
