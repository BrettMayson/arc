params ["_uav", "", "", "_actionData"];

private _weapon = (_uav getVariable ["lxws_holdingWeapon", []]) select 0;

_actionData set [1, format ["Disarm (%1)", getText (configFile >> "CfgWeapons" >> _weapon >> "displayName")]];
