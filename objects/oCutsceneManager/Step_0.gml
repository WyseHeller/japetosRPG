if(TimerInputSafety.is_expired())
{
	if(InputCheck(INPUT_VERB.ACTION))
	{
		var _nextFrame = image_index + 1;
		if(_nextFrame >= sprite_get_number(CutsceneSequence))
		{
			// trigger listener in event dispatcher
			game_set_pause(false);
			instance_destroy();
		}
		else
		{
			image_index = _nextFrame;
			TimerInputSafety.set_timer();
		}
	}
}