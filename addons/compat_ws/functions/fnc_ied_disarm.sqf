#include "..\script_component.hpp"

params ["_unit", "_uav", "_slot"];

if ([_unit, _uav, _slot] call FUNC(ied_armCondition)) exitWith { false };

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
[[_uav, _slot, _uavMag, _weapon],{
    params ["_uav", "_slot", "_uavMag", "_weapon"];
    _uav setPylonLoadout [_slot, ""];
    if (({_x#3 == _uavMag and _x#4 > 0} count getAllPylonsInfo _uav) == 0) then {
        _uav removeWeapon _weapon;
    };
}] remoteExecCall ["call"];

[_unit, _playerMag] call EFUNC(core,addMagazine);
