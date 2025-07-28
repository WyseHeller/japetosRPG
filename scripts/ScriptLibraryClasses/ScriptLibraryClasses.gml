//    _  _  _                                          _                             
//   | |(_)| |__   _ __  __ _  _ __  _   _   _    ___ | |  __ _  ___  ___   ___  ___ 
//   | || || '_ \ | '__|/ _` || '__|| | | | (_)  / __|| | / _` |/ __|/ __| / _ \/ __|
//   | || || |_) || |  | (_| || |   | |_| |  _  | (__ | || (_| |\__ \\__ \|  __/\__ \
//   |_||_||_.__/ |_|   \__,_||_|    \__, | (_)  \___||_| \__,_||___/|___/ \___||___/
//                                   |___/                                           

/// @function Timer(_default)
/// @parameter {real} _default timer's default time in seconds
/// @description a timer set in seconds which counts down to zero adjusted for delta time

function Timer(_default) constructor
{
 // public
    
    /// @function set_timer()
    /// @parameter {real} _seconds set timer to how many seconds (default: initialized time)
	/// @description sets the timer in seconds converted to microseconds
    function set_timer(_seconds = __.default_time) { __.time = _seconds * 1000000; }
	
	/// @function get_timer()
	/// @description returns the timer's current time (in seconds)
	function get_timer() { return __.time / 1000000; }
	
	/// @function tick_timer()
	/// @description counts down timer's time by one microsecond, adjusted for delta_time
	function tick_timer() { __.time -= delta_time; }
	
	/// @function is_expired()
	/// @description determines if timer countdown has reached zero
	function is_expired() { return (__.time > 0) ? false : true; }
    
 // private
    __ =
    {
        default_time : _default,
        time : _default
    }
	
	set_timer();
}

global.ColorMap =
{
	/// @function get_color_value_default()
	/// @parameter {string} _ColorName the color id key
	/// @description returns the default hexidecimal value for the given color key
	get_color_value_default : function(_ColorName)
	{
		return struct_get(self.__default, _ColorName);
	},
	
	/// @function set_color_value()
	/// @parameter {string} _ColorName the color name
	/// @parameter {real} _ColorValue the hexidecimal color value
	/// @description sets the given color key to the given value
	set_color_value : function(_ColorName, _ColorValue)
	{
		struct_set(self, _ColorName, _ColorValue);
		return self;
	},
	
	/// @function get_color_value()
	/// @parameter {string} _ColorName the color id key
	/// @description returns the hexidecimal color value for the given color key
	get_color_value : function(_ColorName)
	{
		if(string_length(_ColorName) == 1) { _ColorName = parse_shorthand(_ColorName); }
		return struct_get(self, _ColorName);
	},
	
	/// @function format_scribble()
	/// @parameter {any} _Color the color name or hexidecimal value to format
	/// @description returns the hexidecimal color value for given color as a formatted scribble tag
	format_scribble_tag : function(_ColorName)
	{
		return "[d#" + (is_string(_ColorName) ? string(get_color_value(_ColorName)) : string(_ColorName)) + "]";
	},
	
	/// @function get_color_inverse()
	/// @parameter {string} _ColorName the color id key
	/// @description returns the hexidecimal value of the given color's inverse color.
	get_color_inverse : function(_ColorName)
	{
		switch(_ColorName)
		{
			case "darkred": return get_color_value("red"); break;
			case "red": return get_color_value("darkred"); break;
			case "darkorange": return get_color_value("orange"); break;
			case "orange": return get_color_value("darkorange"); break;
			case "brown": return get_color_value("yellow"); break;
			case "yellow": return get_color_value("brown"); break;
			case "darkgreen": return get_color_value("green"); break;
			case "green": return get_color_value("darkgreen"); break;
			case "darkblue": return get_color_value("blue"); break;
			case "blue": return get_color_value("darkblue"); break;
			case "darkcyan": return get_color_value("cyan"); break;
			case "cyan": return get_color_value("darkcyan"); break;
			case "darkmagenta": return get_color_value("magenta"); break;
			case "magenta": return get_color_value("darkmagenta"); break;
			case "black": return get_color_value("darkgrey"); break;
			case "darkgrey": return get_color_value("black"); break;
			case "grey": return get_color_value("white"); break;
			case "white": return get_color_value("grey"); break;
			default: __debug_log_write("[ERROR] Color Name Not Found. Returning default inverse color."); return get_color_value("grey"); break;
		}
	},
	
	/// @function get_color_contrast()
	/// @parameter {string} _ColorName the color id key
	/// @description returns hexidecimal value of the given color's contrast color.
	get_color_contrast : function(_ColorName)
	{
		switch(_ColorName)
		{
			case "darkred": return get_color_value("orange"); break;
			case "red": return get_color_value("yellow"); break;
			case "darkorange": return get_color_value("brown"); break;
			case "orange": return get_color_value("yellow"); break;
			case "brown": return get_color_value("darkred"); break;
			case "yellow": return get_color_value("red"); break;
			case "darkgreen": return get_color_value("darkblue"); break;
			case "green": return get_color_value("blue"); break;
			case "darkblue": return get_color_value("brown"); break;
			case "blue": return get_color_value("yellow"); break;
			case "darkcyan": return get_color_value("darkgreen"); break;
			case "cyan": return get_color_value("green"); break;
			case "darkmagenta": return get_color_value("grey"); break;
			case "magenta": return get_color_value("white"); break;
			case "black": return get_color_value("darkmagenta"); break;
			case "darkgrey": return get_color_value("magenta"); break;
			case "grey": return get_color_value("darkgreen"); break;
			case "white": return get_color_value("green"); break;
			default: __debug_log_write("[ERROR] Color Name Not Found. Returning default contrast color."); return get_color_value("green"); break;
		}
	},
	
	/// @function parse_shorthand()
	/// @parameter {string} _StringColorKey the color id key
	/// @description returns the name of the given color
	parse_shorthand : function(_StringColorKey)
	{
		switch(_StringColorKey)
		{
			case "r": return "darkred"; break;
			case "R": return "red"; break;
			case "o": return "darkorange"; break;
			case "O": return "orange"; break;
			case "w": return "brown"; break;
			case "W": return "yellow"; break;
			case "g": return "darkgreen"; break;
			case "G": return "green"; break;
			case "b": return "darkblue"; break;
			case "B": return "blue"; break;
			case "c": return "darkcyan"; break;
			case "C": return "cyan"; break;
			case "m": return "darkmagenta"; break;
			case "M": return "magenta"; break;
			case "k": return "black"; break;
			case "K": return "darkgrey"; break;
			case "y": return "grey"; break;
			case "Y": return "white"; break;
			default: __debug_log_write("[ERROR] Color Key Not Found. Returning default color key."); return "white"; break;
		}
	},
	
	/// @function get_color_shorthand()
	/// @parameter {string} _StringColorName the name of the color
	/// @description returns the color id as a string
	get_color_shorthand : function(_StringColorName)
	{
		switch(_StringColorName)
		{
			case "darkred": return "r"; break;
			case "red": return "R"; break;
			case "darkorange": return "o"; break;
			case "orange": return "O"; break;
			case "brown": return "w"; break;
			case "yellow": return "W"; break;
			case "darkgreen": return "g"; break;
			case "green": return "G"; break;
			case "darkblue": return "b"; break;
			case "blue": return "B"; break;
			case "darkcyan": return "c"; break;
			case "cyan": return "C"; break;
			case "darkmagenta": return "m"; break;
			case "magenta": return "M"; break;
			case "black": return "k"; break;
			case "darkgrey": return "K"; break;
			case "grey": return "y"; break;
			case "white": return "Y"; break;
			default: __debug_log_write("[ERROR] Color Key Not Found When Parsing Shorthand Color Key."); return "Y"; break;
		}
	},
	
	darkred: #a64a2e,
	red: #d74200,
	darkorange: #f15f22,
	orange: #e99f10,
	brown: #98875f,
	yellow: #cfc041,
	darkgreen: #009403,
	green: #00c420,
	darkblue: #0048bd,
	blue: #0096ff,
	darkcyan: #40a4b9,
	cyan: #77bfcf,
	darkmagenta: #b154cf,
	magenta: #da5bd6,
	black: #0f3b3a,
	darkgrey: #155352,
	grey: #b1c9c3,
	white: #ffffff,
	
	__default :
	{
		darkred: #a64a2e,
		red: #d74200,
		darkorange: #f15f22,
		orange: #e99f10,
		brown: #98875f,
		yellow: #cfc041,
		darkgreen: #009403,
		green: #00c420,
		darkblue: #0048bd,
		blue: #0096ff,
		darkcyan: #40a4b9,
		cyan: #77bfcf,
		darkmagenta: #b154cf,
		magenta: #da5bd6,
		black: #0f3b3a,
		darkgrey: #155352,
		grey: #b1c9c3,
		white: #ffffff
	}
}