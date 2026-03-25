#include "..\script_component.hpp"

params ["_unit", "_params"];
_params params ["_uav", "_magazine", "_slot"];

if !([_unit, _uav, _slot] call FUNC(ied_armCondition)) exitWith { false };

_unit playActionNow "putDown";

_unit removeMagazine _magazine;

private _uavMag = switch (_magazine) do {
    case "1Rnd_50mm_Smoke_lxWS": {
        "PylonMissile_1Rnd_50mm_Smoke_lxWS"
    };
    case "1Rnd_58mm_AT_lxWS": {
        "PylonMissile_1Rnd_58mm_AT_lxWS"
    };
    default {
        "PylonMissile_1Rnd_40mm_HE_lxWS"
    };
};

[_uav, [_slot, _uavMag, true]] remoteExec ["setPylonLoadout", _uav];
