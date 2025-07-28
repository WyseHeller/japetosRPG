if(room == CellSysLoader)
{
    window_center();
	instance_create_depth(0, 0, -1, ObjMenuMain);
	
	__debug_log_write("[Init] Game Setup Complete.")
	instance_destroy();
}
else
{
    room_goto(CellSysLoader);
	alarm_set(1, 1);
}