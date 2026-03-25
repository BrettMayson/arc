#include "..\script_component.hpp"

params ["_unit", "_uav", "_slot"];

private _compatible = [
    "1Rnd_40mm_HE_lxWS",
    "1Rnd_50mm_Smoke_lxWS",
    "1Rnd_58mm_AT_lxWS"
];
private _available = [];

{
    private _container = _x;
    {
        _x params ["_class", "_count"];
        if (_class in _compatible) then {
            _available pushBackUnique _class;
        };
    } forEach magazinesAmmoCargo _container;
} forEach [
    uniformContainer _unit,
    vestContainer _unit,
    backpackContainer _unit
];

private _children = [];
{
    private _cfg = configFile >> "CfgMagazines" >> _x;
    _children pushBack [
        [
            format ["drone_%1", _forEachIndex],
            getText (_cfg >> "displayName"),
            getText (_cfg >> "picture"),
            { [_this select 0, _this select 2] call FUNC(ied_arm) },
            { true },
            {},
            [_uav, _x, _slot]
        ] call ace_interact_menu_fnc_createAction,
        [],
        ACE_player
    ];
} forEach _available;

_children
