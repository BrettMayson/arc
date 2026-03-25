#include "script_component.hpp"

#if EXP_THROWABLE
["loadout", {
    params ["_unit", "_loadout"];
    // Replace grenade with GL
    private _dirty = false;
    if (count (_loadout select 0) > 0) then {
        private _ugl = _loadout select 0 select 5;
        if (count _ugl > 0) then {
            private _magazine = _ugl select 0;
            private _replace = switch (_magazine) do {
                case QGVAR(RC40_scout): { _dirty = true; QGVAR(RC40_scout_gl) };
                case QGVAR(RC40_HE): {_dirty = true;  QGVAR(RC40_HE_gl) };
                default { _magazine };
            };
            _ugl set [0, _replace];
        };
    };

    // check containers
    {
        private _containerIndex = _x;
        if (count (_loadout select _containerIndex) == 0) then {continue};
        private _items = _loadout select _containerIndex select 1;
        {
            if !(_x isEqualType []) then {continue};
            private _magazine = _x select 0;
            private _replace = switch (_magazine) do {
                case QGVAR(RC40_scout_gl): { _dirty = true; QGVAR(RC40_scout) };
                case QGVAR(RC40_HE_gl): { _dirty = true; QGVAR(RC40_HE) };
                default { _magazine };
            };
            _x set [0, _replace];
        } forEach _items;
    } forEach [3,4,5];
    if (_dirty) then {
        [{
            params ["_unit", "_loadout"];
            _unit setUnitLoadout [_loadout, false];
        }, [_unit, +_loadout]] call CBA_fnc_execNextFrame;
    };
}] call CBA_fnc_addPlayerEventHandler;

["ace_firedPlayer", {
    params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
    if !(local _unit) exitWith {};
    if !("_fake_RF" in _ammo) exitWith {};
    if (_weapon == "Throw") then {
        _projectile setVariable [QAVAR(thrown), true];
    };
}] call CBA_fnc_addEventHandler;
#endif
