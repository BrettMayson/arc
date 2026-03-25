params ["_unit", "_uav", "_slot"];

if (!alive _unit) exitWith {false};
if (!alive _uav) exitWith {false};

(getPylonMagazines _uav) select (_slot - 1) != ""
