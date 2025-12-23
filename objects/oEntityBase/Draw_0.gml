#region [ Overworld Sprite ]
draw_sprite_part_ext
(
	EntityData.SpriteOverworld,
	0,
	floor(EntityData.AnimFrameCurrent) * EntityData.SpriteSize.x,
	floor(Direction/90) * EntityData.SpriteSize.y,
	EntityData.SpriteSize.x,
	EntityData.SpriteSize.y,
	x,
	y,
	1.0,
	1.0,
	EntityData.SpriteColor,
	1.0
);
#endregion

#region [ debug ]
if(global.DEBUG_MODE)
{
	// Bounding Box
	__draw_bbox();
	
	// Directional Facing Line
	var _x1 = bbox_left + (bbox_right - bbox_left)/2;
	var _y1 = bbox_top + (bbox_bottom - bbox_top)/2;
	var _x2 = _x1 + lengthdir_x(bbox_right - bbox_left, Direction);
	var _y2 = _y1 + lengthdir_y(bbox_bottom - bbox_top, Direction);
	draw_line_colour(_x1, _y1, _x2, _y2, c_white, c_yellow);
}
#endregion