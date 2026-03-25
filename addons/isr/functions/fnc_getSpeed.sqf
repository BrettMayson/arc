#include "..\script_component.hpp"

params ["_unit", ["_mode", "KM/H"]];

switch (_mode) do {
    case "M/S": {
        (speed _unit) / 3.6
    };
    default {
        speed _unit
    };
};
