//    _  _  _                                     __                      _    _                    
//   | |(_)| |__   _ __  __ _  _ __  _   _   _   / _| _   _  _ __    ___ | |_ (_)  ___   _ __   ___ 
//   | || || '_ \ | '__|/ _` || '__|| | | | (_) | |_ | | | || '_ \  / __|| __|| | / _ \ | '_ \ / __|
//   | || || |_) || |  | (_| || |   | |_| |  _  |  _|| |_| || | | || (__ | |_ | || (_) || | | |\__ \
//   |_||_||_.__/ |_|   \__,_||_|    \__, | (_) |_|   \__,_||_| |_| \___| \__||_| \___/ |_| |_||___/
//                                   |___/                                                          

#region [ Game ]

/// @function game_set_pause(_bool)
/// @param {bool} _bool game state to set
/// @return {undefined} returns nothing
/// @description sets the game's pause state

function game_set_pause(_bool)
{
    global.FLAG_PAUSE = _bool; // set game pause state
    return; // return nothing
}

/// @function game_get_pause()
/// @return {bool} true is paused, else false
/// @description returns the game's pause state

function game_get_pause() { return global.FLAG_PAUSE; }

#endregion

#region [ Logic ]

/// @function check_collision(_x, _y)
/// @param {real} _x x-coord to check
/// @param {real} _y y-coordinate to check
/// @return {bool} true if collision detected, else false
/// @description checks for collision with collision tile, entity objects, etc.

function check_for_collision(_x, _y)
{
    var _inst = collision_point(_x, _y, ObjEntitySuper, false, true);
    var _tile = tilemap_get_at_pixel(layer_tilemap_get_id("LayerTileCollision"), _x, _y);
    
    if(_tile != 1 && _inst == noone)
    {
        return false;
    }
    else
    {
    	return true;
    }
}

#endregion

#region [ Math ]

#region [ Render ]

/// @function draw_rectangle_frame(_x, _y, _width, _height, _color)
/// @param {int} _x x origin point
/// @param {int} _y y origin point
/// @param {int} _width width of rectangle from origin
/// @param {int} _height height of rectangle from origin
/// @param {color} _color color of rectangle frame (default: white)

function draw_rectangle_frame(_x, _y, _width, _height, _color = c_white)
{
    draw_rectangle_color(_x, _y, _x + _width, _y + _height, _color, _color, _color, _color, true);
}

#endregion

#region [ File Handling ]

function game_save_settings()
{
	
}

function game_save_data()
{
	
}

#endregion

#region [ Debug ]

/// @function __debug_log_clear
/// @description clears the game debug log

function __debug_log_clear()
{
	var _file = file_text_open_write(working_directory + "profile/log_game.txt"); // open the game log file
	var _composition = "JAPETOSRPG [Ver: " + GAME_VERSION + "] [Time: " + string(get_timer()); // create a header for log file
	file_text_write_string(_file, _composition); // write the header to clear the log file
	file_text_close(_file); // close the log file
	
	show_debug_message("[Debug] Game Log Refreshed.");
}

/// @function __debug_log_write(_message)
/// @param {string} _message string message to output
/// @description prints string to game log

function __debug_log_write(_message, _trace = true)
{
	var _file = file_text_open_append(working_directory + "profile/log_game.txt"); // open game log file
	// if trace set to true, include object_id before message
	var _composition = ((_trace == true) ? string(id) + "_" + object_get_name(object_index) + ": " : "") + _message;
	file_text_write_string(_file, _composition);
	file_text_writeln(_file);
	file_text_close(_file); // close game log file
	
	show_debug_message(_composition, false); // print to IDE output
}

#endregion