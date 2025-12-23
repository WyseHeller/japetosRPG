var _MenuCursor = MenuCursor;
var _MenuPage = MenuPage;


if(TimerInputSafety.is_expired())
{
	var _yaxis = InputCheck(INPUT_VERB.MOVE_S) - InputCheck(INPUT_VERB.MOVE_N);
	if(_yaxis != 0)
	{
		MenuCursor = wrap(_MenuCursor + _yaxis, 0, array_length(MenuData));
		
		TimerInputSafety.set_timer(); // reset input safety timer
	}
	else if(InputCheck(INPUT_VERB.ACTION))
	{
		MenuData[MenuCursor][1]();
	}
}