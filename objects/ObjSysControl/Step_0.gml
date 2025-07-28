if(InputLongPressed(INPUT_VERB.LADDER))
{
    game_end();
}

if(InputPressed(INPUT_VERB.PIPBOY)
    && !instance_exists(ObjInterfacePipboy)
    && !game_get_pause())
{
    game_set_pause(true);
    instance_create_depth(0, 0, -1, ObjInterfacePipboy);
}

if(!game_get_pause() && !is_undefined(PlayerID))
{
	var _DirVector = new Vector2(0, 0);
	if(InputPressed(INPUT_VERB.MOVE_N))
	{
		_DirVector.Add(new Vector2(0, -1);
	}
	if(InputPressed(INPUT_VERB.MOVE_NE))
	{
		_DirVector.Add(new Vector2(1, -1));
	}
	if(InputPressed(INPUT_VERB.MOVE_E))
	{
		_DirVector.Add(new Vector2(1, 0));
	}
	if(InputPressed(INPUT_VERB.MOVE_SE))
	{
		_DirVector.Add(new Vector2(1, 1));
	}
	if(InputPressed(INPUT_VERB.MOVE_S))
	{
		_DirVector.Add(new Vector2(1, 0));
	}
	if(InputPressed(INPUT_VERB.MOVE_SW))
	{
		_DirVector.Add(new Vector2(-1, 1));
	}
	if(InputPressed(INPUT_VERB.MOVE_W))
	{
		_DirVector.Add(new Vector2(-1, 0));
	}
	if(InputPressed(INPUT_VERB.MOVE_W))
	{
		_DirVector.Add(new Vector2(-1, 0));
	}
	if(InputPressed(INPUT_VERB.MOVE_NW))
	{
		_DirVector.Add(new Vector2(-1, -1));
	}
	
	_DirVector.Clamped(-1, 1);
	var _DirAngle = _DirVector.Angle();
	
	PlayerID.Direction.Set(_DirVector.x, _DirVector.y);
}