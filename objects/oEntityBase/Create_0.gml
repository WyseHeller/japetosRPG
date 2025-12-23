//      _                               
//     | |__    __ _  ___   ___         
//     | '_ \  / _` |/ __| / _ \        
//     | |_) || (_| |\__ \|  __/        
//     |_.__/  \__,_||___/ \___|        
//                   _    _  _          
//       ___  _ __  | |_ (_)| |_  _   _ 
//      / _ \| '_ \ | __|| || __|| | | |
//     |  __/| | | || |_ | || |_ | |_| |
//      \___||_| |_| \__||_| \__| \__, |
//                                |___/ 

mask_index = __GfxOverworldCollisionMask;

EntityData = new EntityDefine();

Direction = 0;

TimerMovement = new Timer(INPUT_DELAY/2);

__debug_log_write("[Game] " + object_get_name(object_index) + " Object Created.");