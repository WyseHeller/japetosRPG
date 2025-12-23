//          _        _                   
//       __| |  ___ | |__   _   _   __ _ 
//      / _` | / _ \| '_ \ | | | | / _` |
//     | (_| ||  __/| |_) || |_| || (_| |
//      \__,_| \___||_.__/  \__,_| \__, |
//                       _  _  _   |___/ 
//      ___   ___  _ __ | |(_)| |__      
//     / __| / __|| '__|| || || '_ \     
//     \__ \| (__ | |   | || || |_) |    
//     |___/ \___||_|   |_||_||_.__/     
//                                       

#region [ logging ]
/// @function __debug_log_clear
/// @description clears the debug_log.txt debugging log

function __debug_log_clear()
{
	var _file = file_text_open_write(PROFILE_DIRECTORY + "log_game.txt"); // open the game log file
	var _composition = "JAPETOSRPG [Ver: " + GAME_VERSION + "] [Time: " + string(get_timer()); // create a header for log file
	file_text_write_string(_file, _composition); // write the header to clear the log file
	file_text_close(_file); // close the log file
	
	show_debug_message("[Debug] Game Log Refreshed.");
}

/// @function __debug_log_write
/// @param {string} _message string message to output
/// @description prints string to IDE output and debug_long.txt debugging log

function __debug_log_write(_message, _trace = true)
{
	var _file = file_text_open_append(PROFILE_DIRECTORY + "log_game.txt"); // open game log file
	// if trace set to true, include object_id before message
	var _composition = ((_trace == true) ? string(id) + "_" + object_get_name(object_index) + ": " : "") + _message;
	file_text_write_string(_file, _composition);
	file_text_writeln(_file);
	file_text_close(_file); // close game log file
	
	show_debug_message(_composition, false); // print to IDE output
}
#endregion

#region [ bounding boxes ]
/// @function __draw_bbox
/// @description draws the outline of a rectangle in the color c_fuschia
/// @param {real} _x x origin point of rectangle
/// @param {real} _y y origin point of rectangle
/// @param {real} _width width of rectangle from x origin point
/// @param {real} _height height of rectangle from y origin point
function __draw_bbox()
{
	draw_rectangle_colour(bbox_left, bbox_top, bbox_right, bbox_bottom, c_fuchsia, c_fuchsia, c_fuchsia, c_fuchsia, true);
	draw_point_colour(x, y, c_red);
	return self;
}
#endregion