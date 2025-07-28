//                                                          _        
//    _ __ ___    ___  _ __   _   _   _   _ __ ___    __ _ (_) _ __  
//   | '_ ` _ \  / _ \| '_ \ | | | | (_) | '_ ` _ \  / _` || || '_ \ 
//   | | | | | ||  __/| | | || |_| |  _  | | | | | || (_| || || | | |
//   |_| |_| |_| \___||_| |_| \__,_| (_) |_| |_| |_| \__,_||_||_| |_|
//                                                                   

menu_page = 0;
menu_cursor = 0;

MenuDataSaveExists = file_exists("save/savedata.ini");
if(!MenuDataSaveExists) { menu_cursor = 1; }

MenuData =
[
	[ global.LangFile.MenuOptions.OptionStringNameContinue,
		function()
        {
            if(MenuDataSaveExists)
			{
	            game_set_pause(false);
	            room_goto(CellDevSandbox);
	            instance_destroy();
			}
        }
    ],
	[ global.LangFile.MenuOptions.OptionStringNameNewGame,
		function()
        {
            instance_create_depth(0, 0, -1, ObjMenuNewGame);
            instance_destroy();
        }
    ],
	[ global.LangFile.MenuOptions.OptionStringNameSettings,
		function() { } ],
	[ global.LangFile.MenuOptions.OptionStringNameQuitToDesktop,
		function() { game_end(); } ]
]

TimerSplash = new Timer(1);
TimerInput = new Timer(INPUT_DELAY);

__debug_log_write("[Interface] Main Menu Initialized.")