params ["_unit", "_uav"];

private _weapon = _uav getVariable ["lxws_holdingWeapon", []];
private _loadout = getUnitLoadout _unit;

_unit playActionNow "putDown";

[_uav, "SetWeapon", []] call lxws_fnc_droneWeapon;

if ((_loadout#0) isEqualTo []) then {	
    _loadout = [_weapon,nil,nil,nil,nil,nil,nil,nil,nil,nil];
    _unit setUnitLoadout _loadout;	
} else {	
    private _weaponHolder = createVehicle ["WeaponHolder_Single_F", _unit modelToWorld [0,1,0.025], [], 0, "CAN_COLLIDE"];
    _weaponHolder setDir (random 360);
    _weaponHolder addWeaponWithAttachmentsCargoGlobal [_weapon,1];
};
