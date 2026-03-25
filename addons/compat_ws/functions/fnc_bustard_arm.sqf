params ["_unit", "_uav"];

_unit playActionNow "putDown";
[_uav,"SetWeapon",(getUnitLoadout _unit)#0] call lxws_fnc_droneWeapon;
_unit removeWeapon primaryWeapon _unit;
