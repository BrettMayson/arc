#include "..\script_component.hpp"

params ["_uav", "", "", "_actionData"];

_actionData set [1, format ["%1 (%2%3)", LLSTRING(Battery_Remove), round ((fuel _uav) * 100), "%"]];
