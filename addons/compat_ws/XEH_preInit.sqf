#include "script_component.hpp"
ADDON = false;
#include "XEH_PREP.hpp"

// Empties a pylon, and removes its weapon once no other pylon has ammo for it
[QGVAR(clearPylon), {
    params ["_uav", "_slot", ["_uavMag", ""], ["_weapon", ""]];
    _uav setPylonLoadout [_slot, ""];
    if (_weapon != "" && {(getAllPylonsInfo _uav) findIf {_x#3 == _uavMag && {_x#4 > 0}} == -1}) then {
        _uav removeWeapon _weapon;
    };
}] call CBA_fnc_addEventHandler;

ADDON = true;
