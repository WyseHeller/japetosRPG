if(!TimerInput.is_expired())
{
    TimerInput.tick_timer();
	exit;
}

// Variables
var _page = menu_page;
var _cursor = menu_cursor;

var _xaxis = ceil(InputCheck(INPUT_VERB.MOVE_E) - InputCheck(INPUT_VERB.MOVE_W));
var _yaxis = ceil(InputCheck(INPUT_VERB.MOVE_S) - InputCheck(INPUT_VERB.MOVE_N));

if(_xaxis != 0 || _yaxis != 0)
{
	menu_cursor = wrap(menu_cursor + _xaxis + _yaxis, 0, array_length(MenuData[_page]));
	
	TimerInput.set_timer();
}

else if(InputPressed(INPUT_VERB.ACTION))
{
	switch(_page)
	{
		case 0: // Class
		case 1: // Race
			CharacterData[_page] = _cursor;
			++menu_page;
		break;
		case 2:
			game_set_pause(false);
			room_goto(CellDevSandbox);
			instance_destroy();
		break;
		default: break;
	}
	
	TimerInput.set_timer();
}