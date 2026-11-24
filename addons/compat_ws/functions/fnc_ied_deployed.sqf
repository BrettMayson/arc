#include "..\script_component.hpp"

params ["_unit", "_uav"];

{
    private _uavMag = (getPylonMagazines _uav) select (_x - 1);
    private _weapon = getText (configFile >> "CfgMagazines" >> _uavMag >> "pylonWeapon");
    [QGVAR(clearPylon), [_uav, _x, _uavMag, _weapon]] call CBA_fnc_globalEvent;
} forEach [1,2,3,4];
