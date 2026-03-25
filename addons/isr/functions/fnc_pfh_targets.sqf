#include "..\script_component.hpp"

params ["_vehicle"];

if !(GVAR(showTargets)) exitWith {};

private _targets = [];
{
    if ((_x select 3) isNotEqualTo []) then {
        _targets pushBackUnique [_x select 0, _x select 2];
    };
} forEach (getSensorTargets _vehicle);


if ((_vehicle isVehicleSensorEnabled "LaserSensorComponent") isNotEqualTo []) then {
    // Display ACE laser codes
    {
        _x params ["_source"];
        private _target = laserTarget _source;
        if (_targets findIf {_x#0 isEqualTo _target} != -1) then {
            drawIcon3D ["", [1,1,1,1], ASLToAGL getPosASLVisual _target, 0, -0.5, 0, format ["%1", _source getVariable ["ace_laser_code", 1111]], 0, 0.035, ISR_FONT];
        };
    } forEach (values ace_laser_laserEmitters);
};

private _selectable = if (GVAR(menuTargetOpen)) then {
    private _startIndex = GVAR(menuTargetPage) * 9;
    GVAR(currentTargets) select [_startIndex, 9];
} else {
    []
};

private _locked = playerTargetLock select 0;

{
    _x params ["_obj", "_relationship"];
    private _pos = _obj modelToWorld getCenterOfMass _obj;
    if (worldToScreen _pos isEqualTo []) then { continue };
    private _text = "";
    if (GVAR(menuTargetOpen)) then {
        private _index = _selectable find _obj;
        if (_index != -1) then {
            _text = str (_index + 1);
        };
    };
    private _icon = ["\a3\ui_f\data\IGUI\Cfg\Targeting\MarkedTargetLockable_ca.paa", "\a3\ui_f\data\IGUI\Cfg\Targeting\MarkedTargetFriendly_ca.paa"] select (_relationship == "friendly");
    if (_obj isEqualTo _locked) then {
        _icon = "";
    };
    drawIcon3D [_icon, [1,1,1,0.6], _pos, 2, 2, 0, _text, 0, 0.035, ISR_FONT];
} forEach _targets;
