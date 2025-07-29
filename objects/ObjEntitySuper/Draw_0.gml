// Render

draw_self();

// Debug

if(global.DEBUG_MODE)
{
	var _position_origin_x = x + TILE_WIDTH div 2;
	var _position_origin_y = y + TILE_HEIGHT div 2;
	var _position_target_x = _position_origin_x + TILE_WIDTH * Direction.x;
	var _position_target_y = _position_origin_y + TILE_HEIGHT * Direction.y;
	draw_line(_position_origin_x, _position_origin_y, _position_target_x, _position_target_y); // draw facing arrow
	
	draw_rectangle_frame(x, y, TILE_WIDTH, TILE_HEIGHT, c_fuchsia); // draw bounding box
	
	draw_circle_color(x, y, 1, c_red, c_red, false); // draw origin point
}