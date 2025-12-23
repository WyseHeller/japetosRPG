#region [ splashscreen ] // handle splashscreen timer and skip functionality
if(InputCheck(INPUT_VERB.ACTION, 0))
{
	TimerSplashscreen.set_timer(0);
}

if(TimerSplashscreen.is_expired() && alarm_get(0) <= 0)
{
	instance_create_depth(0, 0, -1, oMenuMain); // open main menu
	instance_destroy(); // discard this object
}
else { TimerSplashscreen.tick_timer(); }
#endregion