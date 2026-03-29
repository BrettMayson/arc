#include "..\script_component.hpp"

params ["_unit"];

scopeName "search";

private _canDeploy = false;

{
    {
        _x params ["_class", "_count"];
        private _drone = [side _unit, _class] call FUNC(case_drone);
        _canDeploy = true;
        breakTo "search";
    } forEach magazinesAmmoCargo _x;
} forEach [
    backpackContainer _unit,
    uniformContainer _unit,
    vestContainer _unit
];

_canDeploy
