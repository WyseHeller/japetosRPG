if(TargetRoom != noone)
{
	// send room change to event dispatcher
	// do stuff
	if(TargetX != null) { oEntityPlayer.SpawnPositionStorage.x = TargetX; }
	if(TargetY != null) { oEntityPlayer.SpawnPositionStorage.y = TargetY; }
	room_goto(TargetRoom);
}
else { __debug_log_write("[ERROR] oRoomChanger object in " + room_get_name(room) + " does not have valid target room!"); }