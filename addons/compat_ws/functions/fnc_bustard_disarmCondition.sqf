params ["_unit", "_uav"];

if ((_uav getVariable ['lxws_holdingWeapon',[]]) isEqualTo []) exitWith {false};

true
