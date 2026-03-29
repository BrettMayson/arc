#include "..\script_component.hpp"

params ["_uav", "_signal"];

private _currentFreq = _uav getVariable [QAVAR(freq), 1300];
private _currentPower = _uav getVariable [QAVAR(power), 800];
private _powerLevels = _uav getVariable [QAVAR(powerOptions), [200, 300, 400, 600, 800, 1200, 1800]];
private _freqLevels = _uav getVariable [QAVAR(freqOptions), [433, 915, 1200, 2400, 5800]];

private _powerIndex = _powerLevels find _currentPower;
private _freqIndex = _freqLevels find _currentFreq;

// Signal is very strong — try to reduce power
if (_signal > 0.8) then {
    if (_powerIndex > 0) then {
        private _newPower = _powerLevels select (_powerIndex - 1);
        _uav setVariable [QAVAR(power), _newPower, true];
    };
    if (_freqIndex < (count _freqLevels) - 1) then {
        private _newFreq = _freqLevels select (_freqIndex + 1);
        _uav setVariable [QAVAR(freq), _newFreq, true];
    };
};

// Signal is weak — increase power
if (_signal <= 0.20) then {
    if (_powerIndex < (count _powerLevels) - 1) exitWith {
        private _newPower = _powerLevels select (_powerIndex + 1);
        _uav setVariable [QAVAR(power), _newPower, true];
    };
    // No more power levels, drop frequency if possible
    if (_freqIndex > 0) exitWith {
        private _newFreq = _freqLevels select (_freqIndex - 1);
        _uav setVariable [QAVAR(freq), _newFreq, true];
    };
};
