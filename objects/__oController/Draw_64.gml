if(global.DEBUG_MODE)
{
	var _display_gui_width = display_get_gui_width();
	var _display_gui_height = display_get_gui_height();
	scribble("Game State: " + string(global.FLAG_PAUSE)).draw(_display_gui_width div 2, 0);
}