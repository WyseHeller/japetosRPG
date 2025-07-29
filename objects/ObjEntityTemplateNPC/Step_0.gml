if(TimerStateAlarm.is_expired())
{
	Direction.Set(irandom_range(-1, 1), irandom_range(-1, 1));
	
	var _position_target_x = x + TILE_WIDTH * Direction.x;
	var _position_target_y = y + TILE_HEIGHT * Direction.y;
	
	
}