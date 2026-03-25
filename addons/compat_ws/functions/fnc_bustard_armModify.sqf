params ["", "_unit", "", "_actionData"];

_actionData set [1, format ["Arm (%1)", getText (configFile >> "CfgWeapons" >> primaryWeapon _unit >> "displayName")]];
