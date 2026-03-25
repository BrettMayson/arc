#include "..\script_component.hpp"

params ["_unit", "_uav"];

if (getNumber (configOf _uav >> QAVAR(singleUse)) == 1) exitWith {};

alive _uav && !(isEngineOn _uav)
