//                       _                               
//      ___  _   _  ___ | |_  ___  _ __ ___              
//     / __|| | | |/ __|| __|/ _ \| '_ ` _ \             
//     \__ \| |_| |\__ \| |_|  __/| | | | | |            
//     |___/ \__, ||___/ \__|\___||_| |_| |_|            
//      _    |___/_  _    _         _  _                 
//     (_) _ __  (_)| |_ (_)  __ _ | |(_) ____ ___  _ __ 
//     | || '_ \ | || __|| | / _` || || ||_  // _ \| '__|
//     | || | | || || |_ | || (_| || || | / /|  __/| |   
//     |_||_| |_||_| \__||_| \__,_||_||_|/___|\___||_|   
//                                                       

persistent = true;

__debug_log_clear();
__debug_log_write(program_directory + "-" + working_directory);

ini_open(PROFILE_DIRECTORY + "game.ini"); // open game settings ini

#region [ terminal ] // terminal and display settings
window_set_caption("japetosRPG v0.0.0"); // set game window caption to game title
var _terminal_width = ((display_get_width() div TILE_WIDTH) * TILE_WIDTH); // read terminal width setting
var _terminal_height = ((display_get_height() div TILE_HEIGHT) * TILE_HEIGHT); // read terminal height setting
window_set_size(_terminal_width, _terminal_height); // set game window size to imported settings
view_enabled = true; // enable viewport system
view_set_visible(0, true); // enable viewport 0
view_set_wport(0, _terminal_width); // set viewport 0 width to window width
view_set_hport(0, _terminal_height); // set viewport 0 height to window height

surface_resize(application_surface, _terminal_width, _terminal_height); // resize application draw surface to window size
display_set_gui_size(_terminal_width, _terminal_height); // resize gui draw surface to window size

scribble_font_set_default("FontTerminal"); // set default font for scribble text renderer

__debug_log_write("[Init] Game Resolution: " + string(_terminal_width) + "x" + string(_terminal_height));
#endregion

#region [ color map ] // load 16-color map from settings into color manager
var _ColorIndex =
[
	"darkred", "red", "darkorange", "orange", "brown", "yellow",
	"darkgreen", "green", "darkblue", "blue", "darkcyan", "cyan",
	"darkmagenta", "magenta", "black", "darkgrey", "grey", "white"
]
for(var i = 0; i < array_length(_ColorIndex); ++i)
{
	var _ColorCode = _ColorIndex[i];
	var _ColorCodeDefault = global.ColorMap.get_hexcode(_ColorCode, "Default"); // get default color code as fallback
	global.ColorMap.set_hexcode(_ColorCode, ini_read_real("display.color", _ColorCode, _ColorCodeDefault));
	
	__debug_log_write("[Init] Asset Loaded: " + _ColorCode + "-" + string(global.ColorMap.get_hexcode(_ColorCode)) + "-" + string(_ColorCodeDefault));
}
__debug_log_write("[Init] Asset Loaded: Color Map");

global.GMSTTerminalColor = ini_read_string("display.terminal", "TerminalColor", "yellow");
__debug_log_write("[Init] Terminal Color: " + global.GMSTTerminalColor);
#endregion

#region [ localization ] // load localization language into localization struct
var _file;
_file = file_text_open_read(LOCALE_DIRECTORY + "LangFile.json");
var _jsonstring = "";
	do { _jsonstring += file_text_readln(_file); } until(file_text_eof(_file));
	global.LangFile = json_parse(_jsonstring);
file_text_close(_file);
__debug_log_write("[Init] Asset Loaded: Localisation");
#endregion

ini_close();

game_set_pause(true);

TimerSplashscreen = new Timer(5);
alarm_set(0, 10);