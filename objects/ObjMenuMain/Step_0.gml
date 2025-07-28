
if(!TimerInput.is_expired())
{
	TimerInput.tick_timer();
}
else
{
	switch(menu_page)
	{
		case 0:
			if(InputCheck(INPUT_VERB.ACTION))
			{
				menu_page = 1;
				TimerInput.set_timer();
			}
			else
			{
				if(!TimerSplash.is_expired())
				{
					TimerSplash.tick_timer();
				}
				else
				{
					menu_page = 1;
					delete TimerSplash;
					
					TimerInput.set_timer();
				}
			}
		break;
		case 1:
			var _yaxis = InputY(INPUT_CLUSTER.NAVIGATION); // get y axis input
	
			if(_yaxis != 0) // if player input
			{
				menu_cursor = wrap(menu_cursor + _yaxis, 0, array_length(MenuData)); // move cursor
				if((menu_page == 1) && (menu_cursor == 0) && !MenuDataSaveExists)
				{
					menu_cursor = wrap(menu_cursor + _yaxis, 0, array_length(MenuData)); // move cursor
				} // if no save, continue invalid
				TimerInput.set_timer(); // reset timer
			}
		
			if(InputPressed(INPUT_VERB.ACTION))
			{
				MenuData[menu_cursor][1](); // execute script
				TimerInput.set_timer(); // reset timer
			}
		break;
		default: break;
	}
}