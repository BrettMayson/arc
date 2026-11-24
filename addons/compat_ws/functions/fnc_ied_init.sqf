#include "..\script_component.hpp"

params ["_uav"];

if !(_uav getVariable ["lxws_initialized",false]) then {
    _uav addEventHandler ["Fired",{
        params ["_uav","_weapon","","","","_magazine"];
        if (local _uav) then {
            {
                if (_x#4 == 0) then {
                    [QGVAR(clearPylon), [_uav, _x#0]] call CBA_fnc_globalEvent;
                };
            } forEach getAllPylonsInfo _uav;
        };

        if (getAllPylonsInfo _uav findIf {(_x#3 == _magazine) and (_x#4 > 0)} == -1) then {
            _uav removeWeapon _weapon;
        };
    }];

    _uav setVariable ["lxws_initialized",true];
};
