//                     _                         _         _  _   
//    ___  _   _  ___ | |_  ___  _ __ ___    _  (_) _ __  (_)| |_ 
//   / __|| | | |/ __|| __|/ _ \| '_ ` _ \  (_) | || '_ \ | || __|
//   \__ \| |_| |\__ \| |_|  __/| | | | | |  _  | || | | || || |_ 
//   |___/ \__, ||___/ \__|\___||_| |_| |_| (_) |_||_| |_||_| \__|
//         |___/                                                  

persistent = true;

__debug_log_clear();
__debug_log_write(program_directory + "-" + working_directory);

ini_open(working_directory + "profile/game.ini");

var _terminal_width = ini_read_real("display.terminal", "TerminalWidth", (80 * TILE_WIDTH));
var _terminal_height = ini_read_real("display.terminal", "TerminalHeight", (25 * TILE_HEIGHT));
window_set_caption("japetosRPG v0.0.0");
window_set_size(_terminal_width, _terminal_height);
view_set_wport(0, _terminal_width);
view_set_hport(0, _terminal_height);

surface_resize(application_surface, _terminal_width, _terminal_height);
display_set_gui_size(_terminal_width, _terminal_height);
__debug_log_write("[Init] Game Resolution: " + string(_terminal_width) + "x" + string(_terminal_height));

scribble_font_set_default("FontTerminal");

var _ColorIndex =
[
	"darkred", "red", "darkorange", "orange", "brown", "yellow",
	"darkgreen", "green", "darkblue", "blue", "darkcyan", "cyan",
	"darkmagenta", "magenta", "black", "darkgrey", "grey", "white"
]
for(var i = 0; i < array_length(_ColorIndex); ++i)
{
	var _ColorKey = _ColorIndex[i];
	var _ColorDefault = global.ColorMap.get_color_value_default(_ColorKey);
	var _ColorValue = ini_read_real("display.color", _ColorKey, _ColorDefault);
	global.ColorMap.set_color_value(_ColorKey, _ColorValue);
	__debug_log_write("[Init] Asset Loaded: " + _ColorKey + "-" + string(_ColorValue) + "-" + string(_ColorDefault) );
}
__debug_log_write("[Init] Asset Loaded: Color Map");

global.GMSTTerminalColor = ini_read_string("display.terminal", "TerminalColor", "yellow");
__debug_log_write("[Init] Terminal Color: " + global.GMSTTerminalColor);

#region [ Localization ]
var _file;
_file = file_text_open_read("locale/en/LangFile.json");
var _jsonstring = "";
	do { _jsonstring += file_text_readln(_file); } until(file_text_eof(_file));
	__debug_log_write(_jsonstring);
	global.LangFile = json_parse(_jsonstring);
file_text_close(_file);
__debug_log_write("[Init] Asset Loaded: Localisation");
#endregion

ini_close();

game_set_pause(true);

instance_create_depth(0, 0, -1, ObjSysControl);

alarm_set(0, 1);