//                       _                   
//      ___  _   _  ___ | |_  ___  _ __ ___  
//     / __|| | | |/ __|| __|/ _ \| '_ ` _ \ 
//     \__ \| |_| |\__ \| |_|  __/| | | | | |
//     |___/ \__, ||___/ \__|\___||_| |_| |_|
//           |___/       _  _  _             
//      ___   ___  _ __ | |(_)| |__          
//     / __| / __|| '__|| || || '_ \         
//     \__ \| (__ | |   | || || |_) |        
//     |___/ \___||_|   |_||_||_.__/         
//                                           

#region [ game ]

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

#region [ collisions & movement ]

///@function check_tile
/// @description checks the coordinate for a collision tile
///@param {real} _targetX x-point to check
/// @param {real} _targetY y-point to check
/// @return {Boolean} if tile found true, else false
function check_collision_tile(_targetX, _targetY)
{
	var _LayerCollisionTile = layer_tilemap_get_id("LayerTileCollision");
	if(_LayerCollisionTile == undefined) { __debug_log_write("[ERROR] checking for collision tiles but no layer exists!"); return false; }
	
	//var _adjacentTiles =
	//[
	//	tilemap_get_at_pixel(_LayerCollisionTile, _targetX, _targetY),
	//	tilemap_get_at_pixel(_LayerCollisionTile, _targetX + (bbox_right - bbox_left), _targetY),
	//	tilemap_get_at_pixel(_LayerCollisionTile, _targetX, _targetY + (bbox_bottom - bbox_top)),
	//	tilemap_get_at_pixel(_LayerCollisionTile, _targetX + (bbox_right - x), _targetY + (bbox_bottom - y))
	//]
	
	//for(var i = 0; i < array_length(_adjacentTiles); ++i)
	//{
		//if(tile_get_index(_adjacentTiles[i]) == 1)
		//{
			//return true; // collision tile found
		//}
	//}
	
	if(tile_get_index(tilemap_get_at_pixel(_LayerCollisionTile, _targetX, _targetY))) { return true; }
	
	return false; // no collision tile found
}

#endregion