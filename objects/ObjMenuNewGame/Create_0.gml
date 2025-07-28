//                                             _                _                 
//    _ __ ___    ___  _ __   _   _   _   ___ | |_  __ _  _ __ | |_  _   _  _ __  
//   | '_ ` _ \  / _ \| '_ \ | | | | (_) / __|| __|/ _` || '__|| __|| | | || '_ \ 
//   | | | | | ||  __/| | | || |_| |  _  \__ \| |_| (_| || |   | |_ | |_| || |_) |
//   |_| |_| |_| \___||_| |_| \__,_| (_) |___/ \__|\__,_||_|    \__| \__,_|| .__/ 
//                                                                         |_|    

menu_page = 0;
menu_cursor = 0;

CharacterData = [ undefined, undefined, undefined ]

MenuData =
[
	[
		global.LangFile.EntityAttributes.ClassStringNameWarrior,
		global.LangFile.EntityAttributes.ClassStringNameRanger,
		global.LangFile.EntityAttributes.ClassStringNameWizard
	],
	[
		global.LangFile.EntityAttributes.RaceStringNameHuman,
		global.LangFile.EntityAttributes.RaceStringNameLowGravity,
		global.LangFile.EntityAttributes.RaceStringNameCyborg,
		global.LangFile.EntityAttributes.RaceStringNameSuperSoldier,
		global.LangFile.EntityAttributes.RaceStringNameFurry
	],
	[
		global.LangFile.MenuStartup.StartupBlurb
	]
]

TimerInput = new Timer(INPUT_DELAY);

__debug_log_write("[Interface] Character Creation Menu Initilized.");