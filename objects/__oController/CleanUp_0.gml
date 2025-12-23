if(CAMERA_ID != null) { camera_destroy(CAMERA_ID); }

delete TimerInputSafety;
delete global.ColorMap;

__debug_log_write("[CleanUp] CleanUp Complete");