#include "..\script_component.hpp"

// Adds a case to the unit's backpack, vest or uniform, or drops it on the ground when there's no room
// _ammo of -1 means the case is a CfgWeapons item
params ["_unit", "_magazine", ["_ammo", 1]];

private _isItem = _ammo == -1;

private _container = switch (true) do {
    case (_unit canAddItemToBackpack [_magazine, 1, true]): { backpackContainer _unit };
    case (_unit canAddItemToVest [_magazine, 1, true]): { vestContainer _unit };
    case (_unit canAddItemToUniform [_magazine, 1, true]): { uniformContainer _unit };
    default {
        private _weaponHolder = createVehicle ["WeaponHolder_Single_F", _unit modelToWorld [0, 1, 0.025], [], 0, "CAN_COLLIDE"];
        _weaponHolder setDir (random 360);
        _weaponHolder
    };
};

if (_isItem) then {
    _container addItemCargoGlobal [_magazine, 1];
} else {
    _container addMagazineAmmoCargo [_magazine, 1, _ammo];
};
