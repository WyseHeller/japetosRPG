//    _         _                __                                _         _                   
//   (_) _ __  | |_  ___  _ __  / _|  __ _   ___  ___   _   _ __  (_) _ __  | |__    ___   _   _ 
//   | || '_ \ | __|/ _ \| '__|| |_  / _` | / __|/ _ \ (_) | '_ \ | || '_ \ | '_ \  / _ \ | | | |
//   | || | | || |_|  __/| |   |  _|| (_| || (__|  __/  _  | |_) || || |_) || |_) || (_) || |_| |
//   |_||_| |_| \__|\___||_|   |_|   \__,_| \___|\___| (_) | .__/ |_|| .__/ |_.__/  \___/  \__, |
//                                                         |_|       |_|                   |___/ 

menu_page = 3;
menu_tab = 0;
menu_cursor = 0;

InterfaceData =
[
    [ global.LangFile.InterfacePipboy.TabStringNameStat[0] ],
    [
		global.LangFile.InterfacePipboy.TabStringNameInventory[0],
		[
			global.LangFile.InterfacePipboy.TabInventory.SubTabStringNameWeaponsMelee[0],
			global.LangFile.InterfacePipboy.TabInventory.SubTabStringNameWeaponsMissile[0],
			global.LangFile.InterfacePipboy.TabInventory.SubTabStringNameWeaponsMelee[0],
			global.LangFile.InterfacePipboy.TabInventory.SubTabStringNameWeaponsMelee[0],
		]
	],
    [ global.LangFile.InterfacePipboy.TabStringNameData[0] ],
    [ global.LangFile.InterfacePipboy.TabStringNameMap[0] ],
    [ global.LangFile.InterfacePipboy.TabStringNameRadio[0] ]
]

if(!game_get_pause())
{
    game_set_pause(true);
}

TimerInput[0] = new Timer(INPUT_DELAY);

__debug_log_write("[Interface] Pipboy interface created.");