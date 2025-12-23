
if(!game_get_pause())
{
    if(layer_exists("LayerInstance") && instance_exists(oEntityPlayer))
    {
        #region [ Camera ]
		var _terminalWidth = window_get_width();
        var _terminalHeight = window_get_height();
		var _CameraWidth = _terminalWidth div global.GMSTZoom;
		var _CameraHeight = _terminalHeight div global.GMSTZoom;
        CAMERA_ID = camera_create_view(oEntityPlayer.x, oEntityPlayer.y, _CameraWidth, _CameraHeight, 0.0, oEntityPlayer, -1, -1, _CameraWidth div 2, _CameraHeight div 2);
        
        if(!view_enabled) { view_enabled = true; __debug_log_write("[View] VIEW system ENABLED."); }
        if(!view_get_visible(0))  { view_set_visible(0, true); __debug_log_write("[View] VIEW[0] set VISIBLE."); }
        if(view_get_camera(0) != CAMERA_ID) { view_set_camera(0, CAMERA_ID); __debug_log_write("[View] VIEW[0] CAMERA set."); }
		if(view_get_wport(0) != _terminalWidth) { view_set_wport(0, _terminalWidth); __debug_log_write("[View] VPORT[0] WIDTH set."); }
		if(view_get_hport(0) != _terminalHeight) { view_set_hport(0, _terminalHeight); __debug_log_write("[View] VPORT[0] HEIGHT set."); }
		
		__debug_log_write
		(
			"---- RESOLUTION READOUT ----" + "\n" +
			"Camera: " + string(camera_get_view_width(CAMERA_ID)) + "x" + string(camera_get_view_height(CAMERA_ID)) + "\n" +
			"Display: " + string(display_get_width()) + "x" + string(display_get_height()) + "\n" +
			"Window: " + string(window_get_width()) + "x" + string(window_get_height()) + "\n" +
			"Viewport: " + string(view_get_wport(0)) + "x" + string(view_get_hport(0)) + "\n" +
			"----------------------------"
		);
		#endregion
    }
}