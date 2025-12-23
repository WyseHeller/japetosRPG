#region [ Spawn Point ] // the player's starting position in a new room
if(instance_exists(oPlayerSpawnPoint))
{
	x = oPlayerSpawnPoint.x;
	y = oPlayerSpawnPoint.y;
}
else
{
	x = SpawnPositionStorage.x; SpawnPositionStorage.x = null;
	y = SpawnPositionStorage.y; SpawnPositionStorage.y = null;
}
#endregion