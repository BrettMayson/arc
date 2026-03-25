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

private _points = [];
for "_i" from 0 to _count do {
    private _point = _object getPos [800, _i * (360 / _count)];
    _point set [2, _src#2 + 500];
    _points pushBack _point;
};

private _ret = 10;

{
    _ret = _ret min (count lineIntersectsSurfaces [_src, AGLToASL _x, _object, objNull, true, 3]);
} forEach _points;

GVAR(satCacheValue) = _ret;
GVAR(satCacheExpiry) = time + 5;

_ret
