params ["_unit", "_uav"];

{
    private _uavMag = (getPylonMagazines _uav) select (_x - 1);
    private _weapon = getText (configFile >> "CfgMagazines" >> _uavMag >> "pylonWeapon");
    [[_uav, _x, _uavMag, _weapon],{
        params ["_uav", "_slot", "_uavMag", "_weapon"];
        _uav setPylonLoadout [_slot, ""];
        if (({_x#3 == _uavMag and _x#4 > 0} count getAllPylonsInfo _uav) == 0) then {
            _uav removeWeapon _weapon;
        };
    }] remoteExecCall ["call"];
} forEach [1,2,3,4];
