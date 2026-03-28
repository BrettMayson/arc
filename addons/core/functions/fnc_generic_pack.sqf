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

        [_unit, _case, _fuel * 100] call EFUNC(core,addMagazine);
    },
    {},
    format ["Packing %1", getText ((configOf _uav) >> "displayName")]
] call ace_common_fnc_progressBar;
