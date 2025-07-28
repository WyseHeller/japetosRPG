//                                                   _    _    _                    
//    _ __ ___    ___  _ __   _   _   _   ___   ___ | |_ | |_ (_) _ __    __ _  ___ 
//   | '_ ` _ \  / _ \| '_ \ | | | | (_) / __| / _ \| __|| __|| || '_ \  / _` |/ __|
//   | | | | | ||  __/| | | || |_| |  _  \__ \|  __/| |_ | |_ | || | | || (_| |\__ \
//   |_| |_| |_| \___||_| |_| \__,_| (_) |___/ \___| \__| \__||_||_| |_| \__, ||___/
//                                                                       |___/      

// variables
menu_page = 0;
menu_tab = 0;
menu_cursor = 0;

// menu data
MenuData =
[
    [ "general",          function() { } ],
    [ "audio",            function() { } ],
    [ "display",          function() { } ],
    [ "accessibility",    function() { } ],
    [ "????",             function() { } ],
    [ "go back",          function()
        {
            if(MAIN_MENU_ID != null)
            {
                instance_activate_object(MAIN_MENU_ID);
            }
            else
            {
            	game_set_pause(false);
            }
            instance_destroy();
        }
    ]
]

// other
MAIN_MENU_ID = null;
if(instance_exists(ObjMenuMain))
{
    MAIN_MENU_ID = ObjMenuMain;
    instance_deactivate_object(MAIN_MENU_ID);
}

// utility
TIMER_INPUT = new Timer(INPUT_DELAY);

cout("COMPLETE. Settings Menu Deployed.");