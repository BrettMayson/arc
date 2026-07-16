#include "..\script_component.hpp"

params ["_unit", "_uav"];

private _case = getText ((configOf _uav) >> QAVAR(case));
if (_case == "") exitWith {};

private _isWeapon = getNumber ((configOf _uav) >> QAVAR(caseWeapon)) == 1;

[_unit, "MedicOther"] call ace_common_fnc_doGesture;
[
    5,
    [_unit, _uav, _case, _isWeapon],
    {
        (_this select 0) params ["_unit", "_uav", "_case", "_isWeapon"];
        private _fuel = if (_isWeapon) then {-1} else {fuel _uav * 100};
        deleteVehicle _uav;

        [_unit, _case, _fuel] call EFUNC(core,addMagazine);
    },
    {},
    format ["Packing %1", getText ((configOf _uav) >> "displayName")]
] call ace_common_fnc_progressBar;
