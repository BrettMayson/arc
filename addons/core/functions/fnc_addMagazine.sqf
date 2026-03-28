params ["_unit", "_magazine", ["_ammo", 1]];

if (_unit canAddItemToBackpack [_magazine, 1, true]) then {
    (backpackContainer _unit) addMagazineAmmoCargo [_magazine, 1, _ammo];
} else {
    private _weaponHolder = createVehicle ["WeaponHolder_Single_F", _unit modelToWorld [0, 1, 0.025], [], 0, "CAN_COLLIDE"];
    _weaponHolder setDir (random 360);
    _weaponHolder addMagazineAmmoCargo [_magazine, 1, _ammo];
};
