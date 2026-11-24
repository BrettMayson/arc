#include "..\script_component.hpp"

params ["_uav", "_signal"];

private _currentFreq = _uav getVariable [QAVAR(freq), DEFAULT_FREQ];
private _currentPower = _uav getVariable [QAVAR(power), DEFAULT_POWER];
private _powerLevels = _uav getVariable [QAVAR(powerOptions), DEFAULT_POWER_OPTIONS];
private _freqLevels = _uav getVariable [QAVAR(freqOptions), DEFAULT_FREQ_OPTIONS];

// Index of the value, or of the closest level if the value isn't one of the levels
private _fnc_levelIndex = {
    params ["_levels", "_value"];
    private _index = _levels find _value;
    if (_index != -1) exitWith {_index};
    private _distances = _levels apply {abs (_x - _value)};
    _distances find (selectMin _distances)
};

private _powerIndex = [_powerLevels, _currentPower] call _fnc_levelIndex;
private _freqIndex = [_freqLevels, _currentFreq] call _fnc_levelIndex;

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
if (_signal <= 0.50) then {
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
