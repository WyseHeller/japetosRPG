// variables
var _page = menu_page;
var _cursor = menu_cursor;

var _padding = TERMINAL_CHAR_WIDTH;
var _column = [ _padding, (_padding * 3) ]
var _row = [ TERMINAL_CHAR_HEIGHT, (TERMINAL_CHAR_HEIGHT * 3) ]

// render menu
switch(_page)
{
	case 0:
		scribble("settings").draw(_column[0], _row[0]); // draw the menu title
		
		for(var i = 0; i < array_length(MenuData); ++i)
		{
		    var _text = MenuData[i][0]; // get button text
			var _color = (_cursor == i) ? "[c_white]" : "[c_grey]"; // get button color
			scribble(_color + _text + "[/color]").draw(_column[1], _row[1] + (TERMINAL_CHAR_WIDTH * i)); // draw menu button
		}
		
        scribble(">").draw(_column[0], _row[1] + (TERMINAL_CHAR_HEIGHT * _cursor)); // draw the menu cursor
	break;
	default: break;
}