#ifndef ACTION_DISTANCE
    #define ACTION_DISTANCE DEFAULT_DISTANCE
#endif
class AVAR(pack) {
    displayName = ECSTRING(core,UAV_Pack);
    distance = ACTION_DISTANCE;
    condition = QUOTE([ARR_2(_player,_target)] call EFUNC(core,generic_packCondition));
    statement = QUOTE([ARR_2(_player,_target)] call EFUNC(core,generic_pack));
};
