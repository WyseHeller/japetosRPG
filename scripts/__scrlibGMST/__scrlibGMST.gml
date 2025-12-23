//       ____  __  __  ____  _____     
//      / ___||  \/  |/ ___||_   _|___ 
//     | |  _ | |\/| |\___ \  | | / __|
//     | |_| || |  | | ___) | | | \__ \
//      \____||_|  |_||____/  |_| |___/
//                       _  _          
//      ___   ___  _ __ (_)| |__       
//     / __| / __|| '__|| || '_ \      
//     \__ \| (__ | |   | || |_) |     
//     |___/ \___||_|   |_||_.__/      
//                                     

#region [ macros ]
#macro GAME_VERSION "0.0.1"

#macro PROFILE_DIRECTORY	(working_directory + "profile\\")
#macro LOCALE_DIRECTORY		(working_directory + "locale\\en\\")

#macro TERMINAL_CHAR_WIDTH 8
#macro TERMINAL_CHAR_HEIGHT 12
#macro TILE_WIDTH 24
#macro TILE_HEIGHT 32

#macro INPUT_DELAY 0.25

#macro null -1
#endregion

#region [ game settings (GMST) ]
global.LangFile = undefined;

global.DEBUG_MODE = true;

global.FLAG_PAUSE = true;

global.GMSTMasterVolume = -1;
global.GMSTGraphicSpeed = 60;
global.GMSTLogicSpeed = 60;

global.GMSTZoom = 2;

global.GMSTTerminalColor = c_white;
#endregion