for(var i = 0; i < array_length(MenuData); i++)
{
	scribble(MenuData[i][0]).draw(TERMINAL_CHAR_WIDTH, TERMINAL_CHAR_HEIGHT + TERMINAL_CHAR_HEIGHT * i);
}
scribble(">").draw(0, TERMINAL_CHAR_HEIGHT + TERMINAL_CHAR_HEIGHT * MenuCursor);