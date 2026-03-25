#include "..\script_component.hpp"

if !(_this call EFUNC(core,generic_packCondition)) exitWith {false};

params ["_unit", "_uav"];

(getPylonMagazines _uav) findIf { _x != "" } isEqualTo -1
