#region [ splashscreen ] // render splashscreen
var _TerminalWidth = display_get_gui_width();
var _terminalHeight = display_get_gui_height();
var _TerminalColor = global.GMSTTerminalColor;
	var _ColorTagTerminal = global.ColorMap.get_scribble_tag(_TerminalColor);
	var _ColorTagTerminalInverse = global.ColorMap.get_scribble_tag(_TerminalColor, "Inverse");
	var _ColorTagTerminalContrast = global.ColorMap.get_scribble_tag(_TerminalColor, "Contrast");
var _UIMarginX = [ (TERMINAL_CHAR_WIDTH * 3), (TERMINAL_CHAR_WIDTH * 35) ]
var _UIMarginY = [ (TERMINAL_CHAR_HEIGHT * 3) ]
var _ArrayCredits =
[
	[ "Scribble " + string(SCRIBBLE_VERSION), "Copyright (c) 2023 Julian Adams" ],
	[ "Input " + string(INPUT_VERSION), "Copyright (c) 2023 Julian Adams" ],
	[ "TurboGML " + "5.0.0", "Copyright (c) 2024 Mozart Junior (FoxyOfJungle)" ]
]

scribble(
	_ColorTagTerminalInverse
	+ "japetosRPG is in early alpha. Press "
	+ _ColorTagTerminalContrast
	+ "E"
	+ _ColorTagTerminalInverse
	+ " to move along.[/c]"
).draw(TERMINAL_CHAR_WIDTH, TERMINAL_CHAR_HEIGHT);

for(var i = 0; i < array_length(_ArrayCredits); ++i)
{
	scribble(_ColorTagTerminalInverse + _ArrayCredits[i][0] + "[/c]").draw(_UIMarginX[0], _UIMarginY[0] + (i * TERMINAL_CHAR_HEIGHT));
	scribble(_ColorTagTerminalInverse + _ArrayCredits[i][1] + "[/c]").draw(_UIMarginX[1], _UIMarginY[0] + (i * TERMINAL_CHAR_HEIGHT));
}
#endregion