if(InputLongPressed(INPUT_VERB.LADDER))
{
    game_end();
}

if(TimerInputSafety.is_expired())
{
	if(InputPressed(INPUT_VERB.PIPBOY)
	    && !instance_exists(ObjInterfacePipboy)
	    && !game_get_pause())
	{
	    game_set_pause(true);
	    instance_create_depth(0, 0, -1, ObjInterfacePipboy);
		
		TimerInputSafety.set_timer();
	}
}

if(!game_get_pause() && !is_undefined(PlayerID))
{
	if(!PlayerID.TimerMovement.is_expired()) { exit; }
	
	var _DirVector = new Vector2(0, 0);
	if(InputCheck(INPUT_VERB.MOVE_N))
	{
		_DirVector.Set(0, -1);
	}
	else if(InputCheck(INPUT_VERB.MOVE_NE))
	{
		_DirVector.Set(1, -1);
	}
	else if(InputCheck(INPUT_VERB.MOVE_E))
	{
		_DirVector.Set(-1, 0);
	}
	else if(InputCheck(INPUT_VERB.MOVE_SE))
	{
		_DirVector.Set(1, 1);
	}
	else if(InputCheck(INPUT_VERB.MOVE_S))
	{
		_DirVector.Set(0, 1);
	}
	else if(InputCheck(INPUT_VERB.MOVE_SW))
	{
		_DirVector.Set(-1, 1);
	}
	else if(InputCheck(INPUT_VERB.MOVE_W))
	{
		_DirVector.Set(1, 0);
	}
	else if(InputCheck(INPUT_VERB.MOVE_NW))
	{
		_DirVector.Set(-1, -1);
	}
	
	if(!_DirVector.Equals(new Vector2(0, 0)))
	{
		PlayerID.Direction.Set(_DirVector.x, _DirVector.y); // update facing direction regardless of collision
		
		PlayerID.UpdatePosition = true; // make player object calculate movement
		
		__debug_log_write("[Update] Control Received Player Input");
	}
}