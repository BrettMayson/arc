#include "..\script_component.hpp"

params ["_unit"];

private _deployables = createHashMap;

{
    private _container = _x;
    {
        _x params ["_class", "_count"];
        private _droneMagCfg = configFile >> "CfgMagazines" >> _class;
        private _drone = [side _unit, _class, false] call FUNC(case_drone);
        if (_drone == "") then { continue; };
        private _droneCfg = configFile >> "CfgVehicles" >> _drone;
        private _key = format ["%1_%2", _drone, _count];
        private _stored = _deployables getOrDefault [_key, [0,[]]];
        _stored set [0, (_stored select 0) + 1];
        _stored set [1, [_class, _count, _droneMagCfg, _droneCfg, _container, false]];
        _deployables set [_key, _stored];
    } forEach magazinesAmmoCargo _container;
    {
        private _class = _x;
        private _droneItemCfg = configFile >> "CfgWeapons" >> _class;
        private _drone = [side _unit, _class, true] call FUNC(case_drone);
        if (_drone == "") then { continue; };
        private _droneCfg = configFile >> "CfgVehicles" >> _drone;
        private _stored = _deployables getOrDefault [_class, [0,[]]];
        _stored set [0, (_stored select 0) + 1];
        _stored set [1, [_class, 100, _droneItemCfg, _droneCfg, _container, true]];
        _deployables set [_class, _stored];
    } forEach itemCargo _container;
} forEach [
    backpackContainer _unit,
    vestContainer _unit,
    uniformContainer _unit
];

private _children = [];

{
    _y params ["_stored", "_data"];
    _data params ["_class", "_count", "_droneMagCfg", "_droneCfg", "_container", "_isItem"];
    _children pushBack [
        [
            format ["drone_%1", _forEachIndex],
            format ["%1x %2", _stored, if (getNumber (_droneMagCfg >> QAVAR(hidePercentage)) == 1) then {
                getText (_droneCfg >> "displayName")
            } else {
                format ["%1 (%2%3)", getText (_droneCfg >> "displayName"), _count, "%"]
            }],
            getText (_droneCfg >> "picture"),
            { [_this select 0, _this select 2] call FUNC(generic_deploy) },
            { true },
            {},
            [_container, _count, _class, _isItem]
        ] call ace_interact_menu_fnc_createAction,
        [],
        ACE_Player
    ];
} forEach _deployables;

_children
