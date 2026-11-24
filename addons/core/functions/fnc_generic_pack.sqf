#include "..\script_component.hpp"

params ["_unit", "_uav"];

private _case = getText ((configOf _uav) >> QAVAR(case));
if (_case == "") exitWith {};

private _isWeapon = getNumber ((configOf _uav) >> QAVAR(caseWeapon)) == 1;

// Claim the UAV so two players can't pack it at the same time
_uav setVariable [QAVAR(packingBy), _unit, true];

[_unit, "MedicOther"] call ace_common_fnc_doGesture;
[
    5,
    [_unit, _uav, _case, _isWeapon],
    {
        (_this select 0) params ["_unit", "_uav", "_case", "_isWeapon"];
        if (isNull _uav || {!alive _uav}) exitWith {};
        if ((_uav getVariable [QAVAR(packingBy), objNull]) isNotEqualTo _unit) exitWith {};

        private _fuel = if (_isWeapon) then {-1} else {round (fuel _uav * 100)};
        deleteVehicleCrew _uav;
        deleteVehicle _uav;

        [_unit, _case, _fuel] call FUNC(addMagazine);
    },
    {
        (_this select 0) params ["_unit", "_uav"];
        if ((_uav getVariable [QAVAR(packingBy), objNull]) isEqualTo _unit) then {
            _uav setVariable [QAVAR(packingBy), nil, true];
        };
    },
    format [LLSTRING(UAV_Packing), getText ((configOf _uav) >> "displayName")]
] call ace_common_fnc_progressBar;
