var _page = menu_page;
var _cursor = menu_cursor;
var _TerminalColor = global.GMSTTerminalColor;
	var _TerminalColorValue = global.ColorMap.format_scribble_tag(_TerminalColor);
	var _TerminalColorValueInverse = global.ColorMap.format_scribble_tag(global.ColorMap.get_color_inverse(_TerminalColor));
	var _TerminalColorValueContrast = global.ColorMap.format_scribble_tag(global.ColorMap.get_color_contrast(_TerminalColor));

switch(menu_page)
{
	case 0: // Splash Screen
		var _UIMarginX = [ (TERMINAL_CHAR_WIDTH * 3), (TERMINAL_CHAR_WIDTH * 35) ]
		var _UIMarginY = [ (TERMINAL_CHAR_HEIGHT * 3) ]
		var _ArrayCredits =
		[
			[ "Scribble " + string(SCRIBBLE_VERSION), "Copyright (c) 2023 Julian Adams" ],
			[ "Input " + string(INPUT_VERSION), "Copyright (c) 2023 Julian Adams" ],
			[ "TurboGML " + "5.0.0", "Copyright (c) 2024 Mozart Junior (FoxyOfJungle)" ]
		]
		
		scribble(
			_TerminalColorValueInverse
			+ "japetosRPG is in early alpha. Press "
			+ _TerminalColorValueContrast
			+ "E"
			+ _TerminalColorValueInverse
			+ " to move along.[/c]"
		).draw(TERMINAL_CHAR_WIDTH, TERMINAL_CHAR_HEIGHT);
		
		for(var i = 0; i < array_length(_ArrayCredits); ++i)
		{
			scribble(_TerminalColorValueInverse + _ArrayCredits[i][0] + "[/c]").draw(_UIMarginX[0], _UIMarginY[0] + (i * TERMINAL_CHAR_HEIGHT));
			scribble(_TerminalColorValueInverse + _ArrayCredits[i][1] + "[/c]").draw(_UIMarginX[1], _UIMarginY[0] + (i * TERMINAL_CHAR_HEIGHT));
		}
	break;
	case 1: // Main Menu
		var _UIMargin = [ [ TERMINAL_CHAR_WIDTH, TERMINAL_CHAR_WIDTH * 3 ], [ TERMINAL_CHAR_HEIGHT, TERMINAL_CHAR_HEIGHT * 3 ]]
		
		scribble(_TerminalColorValue + "japetosRPG v0.0.1[/c]").draw(_UIMargin[0][0], _UIMargin[1][0]); // draw the menu title
		
		for(var i = 0; i < array_length(MenuData); ++i)
		{
		    var _text = MenuData[i][0]; // get button text
			var _color = (_cursor == i) ? _TerminalColorValue : _TerminalColorValueInverse;
			if((i == 0) && !MenuDataSaveExists) { _color = global.ColorMap.format_scribble_tag("darkgrey"); }
			scribble(_color + _text + "[/c]").draw(_UIMargin[0][1], _UIMargin[1][1] + (TERMINAL_CHAR_HEIGHT * i)); // draw menu button
		}
		
        scribble(_TerminalColorValue + ">[/c]").draw(_UIMargin[0][0], _UIMargin[1][1] + (TERMINAL_CHAR_HEIGHT * _cursor)); // draw the menu cursor
	break;
	default: break;
}