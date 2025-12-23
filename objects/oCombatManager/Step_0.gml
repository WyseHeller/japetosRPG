switch(bIsPlayerTurn)
{
	#region [ player turn ] // the player's turn
	case true:
	if(TimerInputSafety.is_expired())
	{
		if(InputCheck(INPUT_VERB.ACTION))
		{
			TimerInputSafety.set_timer();
		}
		else if(InputCheck(INPUT_VERB.MOVE_S))
		{
			game_set_pause(false);
			instance_destroy();
		}
	}
	break;
	#endregion
	#region [ battler turn ] // the player's enemy's turn
	case false:
	// attack player
	bIsPlayerTurn = true;																										// switch to player's turn
	break;
	#endregion
	default: break;
}