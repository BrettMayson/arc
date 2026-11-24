#include "..\script_component.hpp"

// ISR handler for the static remote designators, which only have a gunner seat
params ["_unit", "_command", "_args"];

if (_command == "setup") exitWith {
    GVAR(speedCurrentMode) = "KM/H";
    GVAR(altCurrentMode) = "ASL";
};

_this call FUNC(vanillaTurret);
