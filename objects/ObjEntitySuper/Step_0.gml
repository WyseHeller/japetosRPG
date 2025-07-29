if(TimerMovement.is_expired())
{
	if(UpdatePosition == true)
	{
		var _position_target_x = x + TILE_WIDTH * Direction.x;
		var _position_target_y = y + TILE_HEIGHT * Direction.y;
		
		var _inst = position_meeting(_position_target_x, _position_target_y, ObjEntitySuper);
		var _tile = tilemap_get_at_pixel(layer_tilemap_get_id("LayerTileCollision"), _position_target_x, _position_target_y);
		if((_tile == 0) && (_inst == false)) // if no collision tile or entity found
		{
			__debug_log_write("[Update] Position Change (" + string(x) + ", " + string(y) + ") to (" + string(_position_target_x) + ", " + string(_position_target_y) + ")");
			
			x = _position_target_x;
			y = _position_target_y;
			
			TimerMovement.set_timer();
		}
		
		UpdatePosition = false;
	}
}