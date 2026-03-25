params ["_mW"];

// Pretty print the power, in mW, W, kW, or MW
private _result = if (_mW < 1000) then {
    format ["%1 mW", _mW toFixed 0]
} else {
    if (_mW < 1000000) then {
        format ["%1 W", (_mW / 1000) toFixed 2]
    } else {
        if (_mW < 1000000000) then {
            format ["%1 kW", (_mW / 1000000) toFixed 2]
        } else {
            format ["%1 MW", (_mW / 1000000000) toFixed 2]
        };
    };
};
_result
