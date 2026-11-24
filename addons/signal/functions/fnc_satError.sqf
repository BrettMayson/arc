#include "..\script_component.hpp"

params [
    ["_object", ACE_player, [objNull]]
];

if (GVAR(satCacheExpiry) > time) exitWith {
    GVAR(satCacheValue)
};

private _count = 6;

private _src = getPos _object;
_src set [2, 1.3];
_src = AGLToASL _src;

// Points in the sky around the operator, 500m above them (ASL)
private _points = [];
for "_i" from 0 to (_count - 1) do {
    private _point = AGLToASL (_object getPos [800, _i * (360 / _count)]);
    _point set [2, (_src select 2) + 500];
    _points pushBack _point;
};

private _ret = 10;

{
    _ret = _ret min (count lineIntersectsSurfaces [_src, _x, _object, objNull, true, 3]);
} forEach _points;

GVAR(satCacheValue) = _ret;
GVAR(satCacheExpiry) = time + 5;

_ret
