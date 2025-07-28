if(!TIMER_INPUT.is_expired())
{
	TIMER_INPUT.tick_timer();
}
else
{

	var _yaxis = InputX(INPUT_CLUSTER.NAVIGATION);

	if(_yaxis != 0)
	{
		menu_cursor = top(menu_cursor + _yaxis,, array_length(MenuData) - 1);
		TIMER_INPUT.set_timer();
	}

	if(InputPressed("action"))
	{
		MenuData[menu_cursor][1](); // execute script
		TIMER_INPUT.set_timer();
	}

}