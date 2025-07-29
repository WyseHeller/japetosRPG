if(!TIMER_INPUT.is_expired())
{
	TIMER_INPUT.tick_timer();
}
else
{

	var _yaxis = ceil(InputCheck(INPUT_VERB.MOVE_S) - InputCheck(INPUT_VERB.MOVE_N));

	if(_yaxis != 0)
	{
		menu_cursor = wrap(menu_cursor + _yaxis,, array_length(MenuData) - 1);
		TIMER_INPUT.set_timer();
	}

	if(InputPressed("action"))
	{
		MenuData[menu_cursor][1](); // execute script
		TIMER_INPUT.set_timer();
	}

}