#include "..\script_component.hpp"

params ["_freq", "_snr"];

private _steps = [160, 240, 360, 480, 720, 1080];

// SNR → discrete stability bands (with built-in hysteresis via gaps)
private _tier = switch (true) do {
    case (_snr < 11): {0};
    case (_snr < 16): {1};
    case (_snr < 22): {2};
    case (_snr < 38): {3};
    case (_snr < 52): {4};
    default {5};
};

// frequency cap
private _maxRes = [_freq] call FUNC(maxRes);

// base resolution from tier
private _res = _steps select _tier;

// clamp to hardware capability
_res = _res min _maxRes;

// enforce step size (prevents tiny differences from feeling meaningful)
_res = round (_res / 50) * 50;

_res
