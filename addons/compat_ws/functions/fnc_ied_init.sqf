params ["_uav"];

if !(_uav getVariable ["lxws_initialized",false]) then {
    _uav addEventHandler ["Fired",{
        params ["_uav","_weapon","","","","_magazine"];
        {
            if (_x#4 == 0) then {	
                [[_uav,_x],{
                    params ["_uav","_x"];
                    _uav setPylonLoadout [_x#0,""];
                }] remoteExecCall ["call"];
            };
        } forEach getAllPylonsInfo _uav;


        if (({_x#3 == _magazine and _x#4 > 0} count getAllPylonsInfo _uav) == 0) then {
            _uav removeWeapon _weapon;
        };
    }];

    _uav setVariable ["lxws_initialized",true];
};
