#include "..\script_component.hpp"

params ["_f", "_start", "_end"];

if (_start isEqualTo []) exitWith { 1 };
if (_end isEqualTo []) exitWith { 1 };

private _disruptStrength = GVAR(baseDisruptStrength);
private _hits = 0;

// change the impact based on the frequency
private _frequencyRatio = linearConversion [10, 20000, _f, 0.5, 20, true];
private _terrainDisrupt = 0.020 * _frequencyRatio;
private _objectDisrupt = 0.010 * _frequencyRatio;

while {true} do {
    private _intersects = lineIntersectsSurfaces [_start, _end, objNull, objNull, true, 1];
    if (count _intersects == 0) then {break};
    (_intersects select 0) params ["_pos", "_normal", "_obj"];
    if (_pos isEqualTo []) then {break};
    // Ignore the first hit if it's too close to the start
    if (_hits == 0 && {_pos distance _start < 1}) then {
        _pos = _pos vectorAdd (vectorNormalized (_start vectorFromTo _end) vectorMultiply 2);
        _hits = 1;
    } else {
        if (isNull _obj) then { // terrain
            private _depth = (getTerrainHeightASL _pos) - (_pos select 2);
            private _impact = linearConversion [0, 50, _depth, 1, 5, true];
            _disruptStrength = _disruptStrength + (_terrainDisrupt * _impact);
            _pos = _pos vectorAdd (vectorNormalized (_start vectorFromTo _end) vectorMultiply 25);
        } else {
            _disruptStrength = _disruptStrength + _objectDisrupt;
            _pos = _pos vectorAdd (vectorNormalized (_start vectorFromTo _end) vectorMultiply 2);
        };
    };
    if (_pos distance _end < 15) then {break};
    if (_disruptStrength >= 1) then {break};
    _start = _pos;
    _ig1 = _obj;
};

if (_disruptStrength >= 1) exitWith { 1 };

_disruptStrength + (linearConversion [100, 3000, _start distance _end, 0, 1, true] * ((rain / 10) * _frequencyRatio));
