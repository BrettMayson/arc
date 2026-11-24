#include "..\script_component.hpp"

params ["_unit", "_uav", "_slot"];

if !([_unit, _uav, _slot] call FUNC(ied_disarmCondition)) exitWith { false };

_unit playActionNow "putDown";

private _uavMag = (getPylonMagazines _uav) select (_slot - 1);

private _playerMag = switch (_uavMag) do {
    case "PylonMissile_1Rnd_50mm_Smoke_lxWS": {
        "1Rnd_50mm_Smoke_lxWS"
    };
    case "PylonMissile_1Rnd_58mm_AT_lxWS": {
        "1Rnd_58mm_AT_lxWS"
    };
    default {
        "1Rnd_40mm_HE_lxWS"
    };
};

private _weapon = getText (configFile >> "CfgMagazines" >> _uavMag >> "pylonWeapon");
[QGVAR(clearPylon), [_uav, _slot, _uavMag, _weapon]] call CBA_fnc_globalEvent;

[_unit, _playerMag] call EFUNC(core,addMagazine);
