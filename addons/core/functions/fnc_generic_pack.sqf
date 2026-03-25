#include "..\script_component.hpp"

params ["_unit", "_uav"];

private _case = getText ((configOf _uav) >> QAVAR(case));
if (_case == "") exitWith {};

[_unit, "MedicOther"] call ace_common_fnc_doGesture;
[
    5,
    [_unit, _uav, _case],
    {
        (_this select 0) params ["_unit", "_uav", "_case"];
        private _fuel = fuel _uav;
        deleteVehicle _uav;

        private _gwh = [getPos _uav, 0, 'GroundWeaponHolder', side _unit] call BIS_fnc_spawnVehicle; 
        (_gwh select 0) addMagazineAmmoCargo [_case, 1, _fuel * 100];
    },
    {},
    format ["Packing %1", getText ((configOf _uav) >> "displayName")]
] call ace_common_fnc_progressBar;
