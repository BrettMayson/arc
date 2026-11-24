#include "..\script_component.hpp"

params ["_unit", "_uav"];

private _config = configOf _uav;
if (getNumber (_config >> QAVAR(singleUse)) == 1) exitWith {false};
if (getText (_config >> QAVAR(case)) == "") exitWith {false};

// Someone else is already packing it
private _packer = _uav getVariable [QAVAR(packingBy), objNull];
if (alive _packer && {_packer isNotEqualTo _unit}) exitWith {false};

alive _uav && {!isEngineOn _uav}
