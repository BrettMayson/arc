#include "..\script_component.hpp"

params ["_uav", "", "", "_actionData"];

private _weapon = (_uav getVariable ["lxws_holdingWeapon", []]) select 0;

_actionData set [1, format ["%1 (%2)", LELSTRING(core,UAV_Disarm), getText (configFile >> "CfgWeapons" >> _weapon >> "displayName")]];
