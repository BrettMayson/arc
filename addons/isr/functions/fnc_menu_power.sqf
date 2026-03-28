#include "..\script_component.hpp"

params ["_command", "_arg"];

_fnc_options = {
    private _currentFreq = GVAR(vehicle) getVariable [QAVAR(freq), 1300];
    private _currentPower = GVAR(vehicle) getVariable [QAVAR(power), 800];
    private _frequencyOptions = GVAR(vehicle) getVariable [QAVAR(freqOptions), []];
    private _powerOptions = GVAR(vehicle) getVariable [QAVAR(powerOptions), []];
    private _freqCurrent = _frequencyOptions find _currentFreq;
    private _powerCurrent = _powerOptions find _currentPower;
    private _freqNext = if (_frequencyOptions isNotEqualTo []) then {
        _frequencyOptions select ((_freqCurrent + 1) % count _frequencyOptions)
    } else {
        "N/A"
    };
    private _freqPrev = if (_frequencyOptions isNotEqualTo []) then {
        _frequencyOptions select ((_freqCurrent - 1 + count _frequencyOptions) % count _frequencyOptions)
    } else {
        "N/A"
    };
    private _powerNext = if (_powerOptions isNotEqualTo []) then {
        _powerOptions select ((_powerCurrent + 1) % count _powerOptions)
    } else {
        "N/A"
    };
    private _powerPrev = if (_powerOptions isNotEqualTo []) then {
        _powerOptions select ((_powerCurrent - 1 + count _powerOptions) % count _powerOptions)
    } else {
        "N/A"
    };
    [_freqNext, _freqPrev, _powerNext, _powerPrev]
};

_fnc_draw = {
    private _options = call _fnc_options;
    [[
        "POWER SETTINGS",
        format ["PREV FREQ: %1", (_options select 1) call FUNC(displayFrequency)],
        format ["PREV POWER: %1", (_options select 3) call FUNC(displayPower)],
        format ["AUTO ADJUST: %1", ["OFF", "ON"] select (GVAR(vehicle) getVariable [QAVAR(autoAdjust), false])],
        format ["NEXT FREQ: %1", (_options select 0) call FUNC(displayFrequency)],
        format ["NEXT POWER: %1", (_options select 2) call FUNC(displayPower)]
    ]] call FUNC(menu_draw);
};

switch (_command) do {
    case "open": {
        GVAR(menuStack) pushBack ["power", { _this call FUNC(menu_power) }, []];
        GVAR(powerRefresh) = [{
            if (GVAR(menuStack) isEqualTo []) exitWith {
                [_this select 1] call CBA_fnc_removePerFrameHandler;
                GVAR(powerRefresh) = nil;
            };
            ["return", ""] call ((GVAR(menuStack) select -1) select 1)
        }] call CBA_fnc_addPerFrameHandler;
        call _fnc_draw;
    };
    case "return": {
        call _fnc_draw;
    };
    case "close": {
        [GVAR(powerRefresh)] call CBA_fnc_removePerFrameHandler;
        GVAR(powerRefresh) = nil;
    };
    case "key": {
        switch (_arg) do {
            case 4: { // Freq Next
                private _options = call _fnc_options;
                private _nextFreq = _options select 0;
                if (_nextFreq isEqualTo "N/A") exitWith {};
                GVAR(vehicle) setVariable [QAVAR(freq), _nextFreq, true];
                call _fnc_draw;
            };
            case 1: { // Freq Previous
                private _options = call _fnc_options;
                private _prevFreq = _options select 1;
                if (_prevFreq isEqualTo "N/A") exitWith {};
                GVAR(vehicle) setVariable [QAVAR(freq), _prevFreq, true];
                call _fnc_draw;
            };
            case 5: { // Power Next
                private _options = call _fnc_options;
                private _nextPower = _options select 2;
                if (_nextPower isEqualTo "N/A") exitWith {};
                GVAR(vehicle) setVariable [QAVAR(power), _nextPower, true];
                call _fnc_draw;
            };
            case 2: { // Power Previous
                private _options = call _fnc_options;
                private _prevPower = _options select 3;
                if (_prevPower isEqualTo "N/A") exitWith {};
                GVAR(vehicle) setVariable [QAVAR(power), _prevPower, true];
                call _fnc_draw;
            };
            case 3: {
                private _current = GVAR(vehicle) getVariable [QAVAR(autoAdjust), false];
                GVAR(vehicle) setVariable [QAVAR(autoAdjust), !_current, true];
                call _fnc_draw;
            };
        };
    };
};
