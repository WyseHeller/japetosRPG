#region [ center window ] // GAMEMAKER BUG FIX: center the window after 10 steps has elapsed since resizing the window
window_center(); // center window
#endregion

#region [ create oController ] // create persistent game controller object
instance_create_depth(0, 0, -1, __oController); // create controller object at -1 depth, position irrelevant
#endregion

__debug_log_write("[Init] Game Setup Complete.");