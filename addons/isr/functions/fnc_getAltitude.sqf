#include "..\script_component.hpp"

params ["_unit", ["_mode", "AGL"]];

switch (_mode) do {
    case "ASL": {
        ((getPosASL _unit) select 2) + ace_common_mapAltitude
    };
    default {
        0 max ((getPos _unit) select 2)
    };
};
