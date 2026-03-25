params ["_freq"];

private _table = [
    [  433, 160 ],
    [  915, 360 ],
    [ 1200, 480 ],
    [ 2400, 720 ],
    [ 5800, 1080 ]
];

// Clamp frequency
_freq = _freq max (_table select 0 select 0);
_freq = _freq min (_table select -1 select 0);

// Find lower and upper bracket for interpolation
private _lower = _table select 0;
private _upper = _table select -1;

{
    private _next = _x;
    if ((_next select 0) >= _freq) exitWith {
        _upper = _next;
    };
    _lower = _next;
} forEach _table;

// Interpolate resolution value
private _fLower = _lower select 0;
private _fUpper = _upper select 0;
private _rLower = _lower select 1;
private _rUpper = _upper select 1;

private _result = linearConversion [_fLower, _fUpper, _freq, _rLower, _rUpper];

round _result
