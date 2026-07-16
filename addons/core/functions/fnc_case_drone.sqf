#include "..\script_component.hpp"

params ["_side", "_case", "_isItem"];

private _dronePath = if (_isItem) then {
    configFile >> "CfgWeapons" >> _case >> QAVAR(drone)
} else {
    configFile >> "CfgMagazines" >> _case >> QAVAR(drone)
};

private _drone = if (isArray _dronePath) then {
    private _sides = getArray _dronePath;
    switch (_side) do {
        case west: {_sides select 0};
        case east: {_sides select 1};
        case independent: {_sides select 2};
        case civilian: {_sides select 3};
        default {""};
    };
} else {
    getText _dronePath
};

_drone
