if(!game_get_pause())
{
    if(layer_exists("LayerInstance") && !instance_exists(ObjEntityPlayer))
    {
        instance_create_layer(0, 0, "LayerInstance", ObjEntityPlayer);
        
        var _display_width = display_get_gui_width();
        var _display_height = display_get_gui_height();
        var _camera_width = _display_width div global.GMSTZoom;
        var _camera_height = _display_height div global.GMSTZoom;
        var _camera_border_width = _camera_width div 2;
        var _camera_border_height = _camera_height div 2;
        CAMERA = camera_create_view(0, 0, _camera_width, _camera_height, 0.0, ObjEntityPlayer, -1, -1, _camera_border_width, _camera_border_height);
        
        if(!view_enabled) {
            view_enabled = true;
            __debug_log_write("[System] Game View System Enabled.");
        }
        if(!view_get_visible(0))
        {
            view_set_visible(0, true);
            __debug_log_write("[System] Game View System View Set to VIEW[0].");
        }
        if(view_get_camera(0))
        {
            view_set_camera(0, CAMERA);
			__debug_log_write("[System] Game View System CAMERA Set to VIEW[0]")
        }
    }
}