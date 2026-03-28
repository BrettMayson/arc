#include "..\script_component.hpp"

params ["_unit", "_uav"];

if (getNumber (configOf _uav >> QAVAR(singleUse)) == 1) exitWith {false};
if (getNumber (configOf _uav >> QAVAR(noBattery)) == 1) exitWith {false};

fuel _uav == 0 && {
    QAVAR(battery) in magazines _unit
}
