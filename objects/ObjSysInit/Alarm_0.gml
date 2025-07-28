if(instance_exists(ObjSysControl))
{
	room_goto(CellSysLoader);
    alarm_set(1, 1);
}
else
{
    instance_create_depth(0, 0, -1, ObjSysControl);
	alarm_set(0, 1);
}