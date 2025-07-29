if(!TimerInput.is_expired())
{
    TimerInput.tick_timer();
}
else
{
    if(InputPressed(INPUT_VERB.LADDER) // if escape key is pressed
		|| InputPressed(INPUT_VERB.PIPBOY))
    {
        game_set_pause(false); // set pause to 
        instance_destroy(); // deactivate interface
    }
    
    var _xaxis = 0;
    var _yaxis = 0;
    
    if(_xaxis != 0 || _yaxis != 0) // if any player input
    {
        switch(menu_page)
	    {
	        case 0:
	            menu_cursor = wrap(menu_cursor + _yaxis, 0, array_length(InterfaceData) - 1);
	        break;
	        default: break;
	    }
        TimerInput.set_timer(); // reset input safety timer
    }
}