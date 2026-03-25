params ["_unit", "_uav"];

if (!alive _unit) exitWith {false};
if (!alive _uav) exitWith {false};

if (primaryWeapon _unit == "") exitWith {false};
if (count (_uav getVariable ['lxws_holdingWeapon',[]]) != 0) exitWith {false};

true
