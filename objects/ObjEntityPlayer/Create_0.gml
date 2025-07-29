//           _      _              _                _                           
//     ___  | |__  (_)  ___   ___ | |_   _   _ __  | |  __ _  _   _   ___  _ __ 
//    / _ \ | '_ \ | | / _ \ / __|| __| (_) | '_ \ | | / _` || | | | / _ \| '__|
//   | (_) || |_) || ||  __/| (__ | |_   _  | |_) || || (_| || |_| ||  __/| |   
//    \___/ |_.__/_/ | \___| \___| \__| (_) | .__/ |_| \__,_| \__, | \___||_|   
//               |__/                       |_|               |___/             

event_inherited();

persistent = true;

if(ObjSysControl.PlayerID != id) { ObjSysControl.PlayerID = id; }

__debug_log_write("[Game] Player Object Created.");