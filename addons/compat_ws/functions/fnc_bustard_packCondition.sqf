#include "..\script_component.hpp"

if !(_this call EFUNC(core,generic_packCondition)) exitWith {false};

params ["_unit", "_uav"];

if (count (_uav getVariable ['lxws_holdingWeapon',[]]) != 0) exitWith {false};

true
