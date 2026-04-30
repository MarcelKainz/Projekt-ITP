// prüft ob es Zeit für einen Bossraum ist, wenn nicht wird ein normaler Raum generiert
function RoomLogic(){
	if(obj_Player.roomsToBoss < obj_Player.roomsPassed)
		{
			game_end();
		}
	else if(obj_Player.roomsToBoss > obj_Player.roomsPassed)
		{
			NextRoomDefault();
		}
	else if(obj_Player.roomsToBoss == obj_Player.roomsPassed)
		{
			NextRoomBoss();
		}
}