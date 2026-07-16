#include "..\script_component.hpp"

params ["_unit"];

scopeName "search";

private _canDeploy = false;

{
    {
        _x params ["_class", "_count"];
        private _drone = [side _unit, _class, false] call FUNC(case_drone);
        if (_drone == "") then { continue };
        _canDeploy = true;
        breakTo "search";
    } forEach magazinesAmmoCargo _x;
    {
        private _drone = [side _unit, _x, true] call FUNC(case_drone);
        if (_drone == "") then { continue };
        _canDeploy = true;
        breakTo "search";
    } forEach itemCargo _x;
} forEach [
    backpackContainer _unit,
    uniformContainer _unit,
    vestContainer _unit
];

_canDeploy
