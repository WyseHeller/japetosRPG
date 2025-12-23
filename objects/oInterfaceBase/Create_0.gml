//      _                                               
//     | |__    __ _  ___   ___                         
//     | '_ \  / _` |/ __| / _ \                        
//     | |_) || (_| |\__ \|  __/                        
//     |_.__/  \__,_||___/ \___|                        
//      _         _                __                   
//     (_) _ __  | |_  ___  _ __  / _|  __ _   ___  ___ 
//     | || '_ \ | __|/ _ \| '__|| |_  / _` | / __|/ _ \
//     | || | | || |_|  __/| |   |  _|| (_| || (__|  __/
//     |_||_| |_| \__|\___||_|   |_|   \__,_| \___|\___|
//                                                      

if(!game_get_pause()) { game_set_pause(true); }
TimerInputSafety = new Timer(INPUT_DELAY);

__debug_log_write("[System] interface object " + object_get_name(object_index) + " created.");