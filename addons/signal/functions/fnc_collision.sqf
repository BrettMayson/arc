#include "..\script_component.hpp"

params ["_f", "_start", "_end"];

if (_start isEqualTo [] || !(_start isEqualType [])) exitWith { 999 };
if (_end isEqualTo [] || !(_end isEqualType [])) exitWith { 999 };

private _lossDb = 0;
private _hits = 0;

private _dir = vectorNormalized (_start vectorFromTo _end);

// Frequency scaling
private _frequencyRatio = linearConversion [10, 20000, _f, 0.5, 20, true];

private _terrainLossPerHit = 0.2 * _frequencyRatio;
private _objectLossPerHit  = 0.08 * _frequencyRatio;

while {true} do {
    private _intersects = lineIntersectsSurfaces [
        _start,
        _end,
        objNull,
        objNull,
        true,
        1
    ];

    if (_intersects isEqualTo []) exitWith {};
    (_intersects select 0) params ["_pos", "", "_obj"];
    if (_pos isEqualTo []) exitWith {};

    // Skip immediate self-hit
    if (_hits == 0 && {_pos distance _start < 1}) then {
        _pos = _pos vectorAdd (_dir vectorMultiply 2);
        _hits = 1;
    } else {
        if (isNull _obj) then {
            private _depth = (getTerrainHeightASL _pos) - (_pos select 2);
            private _impact = linearConversion [0, 50, _depth, 1, 5, true];
            _lossDb = _lossDb + (_terrainLossPerHit * _impact * 5);
            _pos = _pos vectorAdd (_dir vectorMultiply 25);
        } else {
            _lossDb = _lossDb + _objectLossPerHit;
            _pos = _pos vectorAdd (_dir vectorMultiply 2);
        };
    };

    if (_pos distance _end < 5) exitWith {};
    if (_lossDb >= 120) exitWith {};

    _start = _pos;
};

// Rain attenuation (frequency scaled, capped)
private _rainLoss = ((rain * rain) * (_frequencyRatio * 2)) min 8;
_lossDb = _lossDb + _rainLoss;

_lossDb
