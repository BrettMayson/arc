#ifndef ACTION_DISTANCE
    #define ACTION_DISTANCE DEFAULT_DISTANCE
#endif
class AVAR(removeBattery) {
    displayName = ECSTRING(core,Battery_Remove);
    distance = ACTION_DISTANCE;
    modifierFunction = QUOTE(call EFUNC(core,generic_removeBatteryModify));
    condition = QUOTE(unitIsUAV _target && {[ARR_2(_player,_target)] call EFUNC(core,generic_removeBatteryCondition)});
    statement = QUOTE([ARR_2(_player,_target)] call EFUNC(core,generic_removeBattery));
};
class AVAR(insertBattery) {
    displayName = ECSTRING(core,Battery_Insert);
    distance = ACTION_DISTANCE;
    condition = QUOTE(unitIsUAV _target && {[ARR_2(_player,_target)] call EFUNC(core,generic_insertBatteryCondition)});
    statement = "";
    insertChildren = QUOTE([ARR_2(_player,_target)] call EFUNC(core,generic_insertBatteryInsertChildren));
};
