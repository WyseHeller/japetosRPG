//            _                        ____        _               __  __               
//       ___ | |  __ _  ___  ___  _   / ___| ___  | |  ___   _ __ |  \/  |  __ _  _ __  
//      / __|| | / _` |/ __|/ __|(_) | |    / _ \ | | / _ \ | '__|| |\/| | / _` || '_ \ 
//     | (__ | || (_| |\__ \\__ \ _  | |___| (_) || || (_) || |   | |  | || (_| || |_) |
//      \___||_| \__,_||___/|___/(_)  \____|\___/ |_| \___/ |_|   |_|  |_| \__,_|| .__/ 
//                                                                               |_|    

global.ColorMap =
{
	/// @function get_hexcode
	/// @param {String} _StringColorName the name of the color to retrieve
	/// @param {String} _StringColorMutator the color mutation to apply (options: "Contrast", "Inverse")
	/// @description returns a formatted scribble tag of the input color
	get_hexcode : function(_StringColorName, _StringColorMutator)
	{
		if(!is_undefined(argument[1]) || argument[1] != "") // check for color mutator
		{
			switch(_StringColorMutator)
			{
				case "Inverse":		return ColorCodeMap[$ ColorCodeMap[$ _StringColorName].inverse].hexcode; break; // returns the color value of the indicated color code's inverted value
				case "Contrast":	return ColorCodeMap[$ ColorCodeMap[$ _StringColorName].contrast].hexcode; break; // returns the color value of the indicated color code's contrasted value
				case "Default":		return __.DefaultColorCodeMap[$ _StringColorName].hexcode; break; // returns the color value of the indicated color code's default value
			    default:            return ColorCodeMap[$ _StringColorName].hexcode break; // returns the color value of the indicated color code
			}
		}
		return ColorCodeMap[$ _StringColorName].hexcode; // returns the color value of the color code
	},
	
	/// @function set_hexcode
	/// @param {String} _StringColorName the color code to access
	/// @param {Hex} _ColorHexcode the hexcode to set the color code to
	/// @description assigns the hexcode value to the indicated color code
	set_hexcode : function(_StringColorName, _ColorHexcode) { ColorCodeMap[$ _StringColorName].hexcode = _ColorHexcode; return self; },
	
	/// @function get_inverse
	/// @param {String} _StringColorName the color code to access
	/// @description returns the inverse color code of the indicated color code
	get_inverse : function(_StringColorName) { return ColorCodeMap[$ _StringColorName].inverse; },
	
	/// @function get_contrast
	/// @param {String} _StringColorName the color code to access
	/// @description returns the contrast color code of the indicated color code
	get_contrast : function(_StringColorName) { return ColorCodeMap[$ _StringColorName].contrast; },
	
	/// @function get_scribble_tag
	/// @param {String} _StringColorName the name of the color to retrieve
	/// @param {String} _StringColorMutator the color mutation to apply (options: "Contrast", "Inverse", "Default")
	/// @description returns a formatted scribble tag of the input color
	get_scribble_tag : function(_StringColorName, _StringColorMutator = undefined)
	{
		return "[d#" + string(get_hexcode(_StringColorName, _StringColorMutator)) + "]"; // return the scribble tag
	},
	
	ColorCodeMap :
	{
	//	ColorCode		ShortCode			HexCode				Inverse						Contrast
		darkred : {		shortcode : "r",	hexcode : #a64a2e,	inverse : "red",			contrast : "orange" },
		red : {			shortcode : "R",	hexcode : #d74200,	inverse : "darkred",		contrast : "yellow" },
		darkorange : {	shortcode : "o",	hexcode : #f15f22,	inverse : "orange",			contrast : "brown" },
		orange : {		shortcode : "O",	hexcode : #e99f10,	inverse : "darkorange",		contrast : "yellow" },
		brown : {		shortcode : "w",	hexcode : #98875f,	inverse : "yellow",			contrast : "darkred" },
		yellow : {		shortcode : "W",	hexcode : #cfc041,	inverse : "brown",			contrast : "red" },
		darkgreen : {	shortcode : "g",	hexcode : #009403,	inverse : "green",			contrast : "darkblue" },
		green : {		shortcode : "G",	hexcode : #00c420,	inverse : "darkgreen",		contrast : "orange" },
		darkblue : {	shortcode : "b",	hexcode : #0048bd,	inverse : "blue",			contrast : "orange" },
		blue : {		shortcode : "B",	hexcode : #0096ff,	inverse : "darkblue",		contrast : "orange" },
		darkcyan : {	shortcode : "c",	hexcode : #40a4b9,	inverse : "cyan",			contrast : "orange" },
		cyan : {		shortcode : "C",	hexcode : #77bfcf,	inverse : "darkcyan",		contrast : "orange" },
		darkmagenta : {	shortcode : "m",	hexcode : #b154cf,	inverse : "magenta",		contrast : "orange" },
		magenta : {		shortcode : "M",	hexcode : #da5bd6,	inverse : "darkmagenta",	contrast : "orange" },
		black : {		shortcode : "k",	hexcode : #0f3b3a,	inverse : "darkgrey",		contrast : "orange" },
		darkgrey : {	shortcode : "K",	hexcode : #155352,	inverse : "black",			contrast : "orange" },
		grey : {		shortcode : "y",	hexcode : #b1c9c3,	inverse : "white",			contrast : "orange" },
		white : {		shortcode : "Y",	hexcode : #ffffff,	inverse : "grey",			contrast : "orange" }
	},
	
	__ :
	{
		DefaultColorCodeMap :
		{
		//	ColorCode		ShortCode			HexCode				Inverse						Contrast
			darkred : {		shortcode : "r",	hexcode : #a64a2e,	inverse : "red",			contrast : "orange" },
			red : {			shortcode : "R",	hexcode : #d74200,	inverse : "darkred",		contrast : "yellow" },
			darkorange : {	shortcode : "o",	hexcode : #f15f22,	inverse : "orange",			contrast : "brown" },
			orange : {		shortcode : "O",	hexcode : #e99f10,	inverse : "darkorange",		contrast : "yellow" },
			brown : {		shortcode : "w",	hexcode : #98875f,	inverse : "yellow",			contrast : "darkred" },
			yellow : {		shortcode : "W",	hexcode : #cfc041,	inverse : "brown",			contrast : "red" },
			darkgreen : {	shortcode : "g",	hexcode : #009403,	inverse : "green",			contrast : "darkblue" },
			green : {		shortcode : "G",	hexcode : #00c420,	inverse : "darkgreen",		contrast : "orange" },
			darkblue : {	shortcode : "b",	hexcode : #0048bd,	inverse : "blue",			contrast : "orange" },
			blue : {		shortcode : "B",	hexcode : #0096ff,	inverse : "darkblue",		contrast : "orange" },
			darkcyan : {	shortcode : "c",	hexcode : #40a4b9,	inverse : "cyan",			contrast : "orange" },
			cyan : {		shortcode : "C",	hexcode : #77bfcf,	inverse : "darkcyan",		contrast : "orange" },
			darkmagenta : {	shortcode : "m",	hexcode : #b154cf,	inverse : "magenta",		contrast : "orange" },
			magenta : {		shortcode : "M",	hexcode : #da5bd6,	inverse : "darkmagenta",	contrast : "orange" },
			black : {		shortcode : "k",	hexcode : #0f3b3a,	inverse : "darkgrey",		contrast : "orange" },
			darkgrey : {	shortcode : "K",	hexcode : #155352,	inverse : "black",			contrast : "orange" },
			grey : {		shortcode : "y",	hexcode : #b1c9c3,	inverse : "white",			contrast : "orange" },
			white : {		shortcode : "Y",	hexcode : #ffffff,	inverse : "grey",			contrast : "orange" }
		},
	}
}