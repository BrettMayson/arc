params ["_mhz"];

// Pretty print the frequency, in Hz, kHz, MHz, or GHz
private _result = if (_mhz < 0.1) then {
    format ["%1 Hz", (_mhz * 1000000) toFixed 0]
} else {
    if (_mhz < 1) then {
        format ["%1 kHz", (_mhz * 1000) toFixed 1]
    } else {
        if (_mhz < 1000) then {
            format ["%1 MHz", _mhz toFixed 2]
        } else {
            format ["%1 GHz", (_mhz / 1000) toFixed 2]
        };
    };
};
_result
