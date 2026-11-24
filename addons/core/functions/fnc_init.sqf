#include "..\script_component.hpp"

params ["_uav"];

if !(unitIsUAV _uav) exitWith {};
if (_uav getVariable [QAVAR(init), false]) exitWith {};
_uav setVariable [QAVAR(init), true];

private _config = configOf _uav;

private _freqOptions = getArray (_config >> QAVAR(freq));
if (_freqOptions isEqualTo []) then { _freqOptions = DEFAULT_FREQ_OPTIONS; };
private _powerOptions = getArray (_config >> QAVAR(power));
if (_powerOptions isEqualTo []) then { _powerOptions = DEFAULT_POWER_OPTIONS; };

private _freq = getNumber (_config >> QAVAR(defaultFreq));
if (_freq == 0) then {
    _freq = [_freqOptions select 0, DEFAULT_FREQ] select (DEFAULT_FREQ in _freqOptions);
};
private _power = getNumber (_config >> QAVAR(defaultPower));
if (_power == 0) then {
    _power = [_powerOptions select 0, DEFAULT_POWER] select (DEFAULT_POWER in _powerOptions);
};

// Values may already have been synced from another machine (JIP), only fill in what is missing
private _fnc_default = {
    params ["_var", "_value"];
    if (isNil {_uav getVariable _var}) then {
        _uav setVariable [_var, _value];
    };
};

[QAVAR(autoAdjust), true] call _fnc_default;
[QAVAR(freqOptions), _freqOptions] call _fnc_default;
[QAVAR(powerOptions), _powerOptions] call _fnc_default;
[QAVAR(freq), _freq] call _fnc_default;
[QAVAR(power), _power] call _fnc_default;
