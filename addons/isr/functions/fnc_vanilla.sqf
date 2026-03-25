#include "..\script_component.hpp"

params ["_unit", "_command", "_args"];

(UAVControl getConnectedUAV ace_player) params ["", "_spot"];

if (_command == "setup") exitWith {
    GVAR(speedCurrentMode) = "KM/H";
    GVAR(altCurrentMode) = "ASL";
};

if (_spot != "DRIVER") then {
    _this call FUNC(vanillaTurret);
};
