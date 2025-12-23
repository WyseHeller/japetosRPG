if(!game_get_pause())
{
	#region [ Player Movement ]
	if(TimerMovement.is_expired())
	{
		var _xaxis = 0, _yaxis = 0;
		if(InputCheck(INPUT_VERB.MOVE_N)) { _xaxis = 0; _yaxis = -1; }
		else if(InputCheck(INPUT_VERB.MOVE_S)) { _xaxis = 0; _yaxis = 1; }
		else if(InputCheck(INPUT_VERB.MOVE_E)) { _xaxis = 1; _yaxis = 0; }
		else if(InputCheck(INPUT_VERB.MOVE_W)) { _xaxis = -1; _yaxis = 0; }
		else if(InputCheck(INPUT_VERB.MOVE_NE)) { _xaxis = 1; _yaxis = -1; }
		else if(InputCheck(INPUT_VERB.MOVE_NW)) { _xaxis = -1; _yaxis = -1; }
		else if(InputCheck(INPUT_VERB.MOVE_SE)) { _xaxis = 1; _yaxis = 1; }
		else if(InputCheck(INPUT_VERB.MOVE_SW)) { _xaxis = -1; _yaxis = 1; }
		
		if(_xaxis != 0 || _yaxis != 0)
		{
			Direction = point_direction(0, 0, _xaxis, _yaxis);
			_targetX = x + (TILE_WIDTH * _xaxis);
			_targetY = y + (TILE_HEIGHT * _yaxis);
			
			if(!check_collision_tile(_targetX, _targetY))
			{
				x = _targetX; y = _targetY;
				TimerMovement.set_timer();
			}
		}
	}
	#endregion
}

EntityData.AnimFrameCurrent = wrap(EntityData.AnimFrameCurrent + 0.25, 0, EntityData.AnimFrameMax);