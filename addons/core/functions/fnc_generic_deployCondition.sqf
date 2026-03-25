#include "..\script_component.hpp"

params ["_unit"];

scopeName "search";

private _canDeploy = false;

{
    {
        _x params ["_class", "_count"];
        private _drone = getText (configFile >> "CfgMagazines" >> _class >> QAVAR(drone));
        if (_drone == "") exitWith {
            continue;
        };
        _canDeploy = true;
        breakTo "search";
    } forEach magazinesAmmoCargo _x;
} forEach [
    backpackContainer _unit,
    uniformContainer _unit,
    vestContainer _unit
];

_canDeploy
