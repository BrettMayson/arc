#include "..\script_component.hpp"

params ["", "_unit", "", "_actionData"];

_actionData set [1, format ["%1 (%2)", LELSTRING(core,UAV_Arm), getText (configFile >> "CfgWeapons" >> primaryWeapon _unit >> "displayName")]];
