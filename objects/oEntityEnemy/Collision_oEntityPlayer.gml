if(!game_get_pause())
{
	game_set_pause(true);
	var _inst = instance_create_depth(0, 0, -1, oCombatManager);
	
	instance_deactivate_object(self);
}