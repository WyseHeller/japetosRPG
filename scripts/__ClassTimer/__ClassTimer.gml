//            _                       _____  _                        
//       ___ | |  __ _  ___  ___  _  |_   _|(_) _ __ ___    ___  _ __ 
//      / __|| | / _` |/ __|/ __|(_)   | |  | || '_ ` _ \  / _ \| '__|
//     | (__ | || (_| |\__ \\__ \ _    | |  | || | | | | ||  __/| |   
//      \___||_| \__,_||___/|___/(_)   |_|  |_||_| |_| |_| \___||_|   
//                                                                    

/// @function Timer(_default)
/// @parameter {real} _default timer's default time in seconds
/// @description a timer set in seconds which counts down to zero adjusted for delta time

function Timer(_default) constructor
{
 // public
    
    /// @function set_timer()
    /// @parameter {real} _seconds set timer to how many seconds (default: initialized time)
	/// @description sets the timer in seconds converted to microseconds
    function set_timer(_seconds = __.default_time) { __.time = _seconds * 1000000; return self; }
	
	/// @function get_timer()
	/// @description returns the timer's current time (in seconds)
	function get_timer() { return __.time / 1000000; }
	
	/// @function tick_timer()
	/// @description counts down timer's time by one microsecond, adjusted for delta_time
	function tick_timer() { __.time -= delta_time; return self; }
	
	/// @function is_expired()
	/// @description determines if timer countdown has reached zero
	function is_expired() { return (__.time > 0) ? false : true; }
    
 // private
    __ =
    {
        default_time : _default,
        time : _default
    }
	
	set_timer();
}