#include "..\script_component.hpp"

params ["_unit", "_command", "_args"];

private _control = UAVControl getConnectedUAV ace_player;
private _index = _control find ace_player;
private _spot = if (_index == -1) then {""} else {_control param [_index + 1, ""]};

if (_command == "setup") exitWith {
    GVAR(speedCurrentMode) = "KM/H";
    GVAR(altCurrentMode) = "ASL";
};

if (_spot != "DRIVER") then {
    _this call FUNC(vanillaTurret);
};
