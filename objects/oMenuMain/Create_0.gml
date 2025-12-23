//                        _           
//      _ __ ___    __ _ (_) _ __     
//     | '_ ` _ \  / _` || || '_ \    
//     | | | | | || (_| || || | | |   
//     |_| |_| |_| \__,_||_||_| |_|   
//      _ __ ___    ___  _ __   _   _ 
//     | '_ ` _ \  / _ \| '_ \ | | | |
//     | | | | | ||  __/| | | || |_| |
//     |_| |_| |_| \___||_| |_| \__,_|
//                                    

event_inherited(); // extends oMenuBase extends oInterfaceBase

MenuData = 
[
	[ global.LangFile.Interface.sOptionDevQuickstart, function()
	{
		//game_set_pause(false);
		//instance_destroy(oMenuMain);
		//room_goto(rmCampaignStart);
		
		instance_create_depth(0, 0, -1, oMenuStartup);
		instance_destroy();
	} ],
	[ global.LangFile.Interface.sOptionQuitToDesktop, function()
	{
		game_end(); // exit the game
	} ]
]