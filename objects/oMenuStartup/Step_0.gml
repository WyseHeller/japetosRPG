if(TimerInputSafety.is_expired())
{
	// Variables
	var _MenuPage = MenuPage;
	var _MenuCursor = MenuCursor;
	
	var _xaxis = ceil(InputCheck(INPUT_VERB.MOVE_E) - InputCheck(INPUT_VERB.MOVE_W));
	var _yaxis = ceil(InputCheck(INPUT_VERB.MOVE_S) - InputCheck(INPUT_VERB.MOVE_N));
	
	if(_xaxis != 0 || _yaxis != 0)
	{
		MenuCursor = wrap(_MenuCursor + _xaxis + _yaxis, 0, array_length(MenuData[_MenuPage]));
		
		TimerInputSafety.set_timer();
	}
	
	else if(InputPressed(INPUT_VERB.ACTION))
	{
		switch(_MenuPage)
		{
			case 0: // Class
			case 1: // Race
				CharacterData[_MenuPage] = _MenuCursor;
				++MenuPage;
				TimerInputSafety.set_timer();
			break;
			case 2:
				game_set_pause(false);
				instance_create_depth(0, 0, -1, oCutsceneManager);
				room_goto(rmCampaignStart);
				instance_destroy();
			break;
			default: break;
		}
	}
}