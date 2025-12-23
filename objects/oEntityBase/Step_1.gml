if(!game_get_pause())
{
	if(!TimerMovement.is_expired()) { TimerMovement.tick_timer(); }
}