// prüft ob es Zeit für einen Bossraum ist, wenn nicht wird ein normaler Raum generiert
function RoomLogic(){
	
	if(obj_Player.roomsPassed == 100)
		{
			array_push(global.difficultyCompleted, $"{global.difficulty}Endless");
		}
	
	if(obj_Player.roomsToBoss < obj_Player.roomsPassed)
		{
			GameWin();
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

function NextRoomBoss(){
	var roomType = "boss";
	var roomNr = 1; // vllt dynamisch später || gerade statisch
	var roomName = "rm" + roomType + "_" + string(roomNr);
	var roomID = asset_get_index(roomName);
	
	show_debug_message(roomName);
	show_debug_message(roomID);
	
	room_goto(roomID);
	obj_Player.roomsPassed++;
}

function NextRoomDefault(){
 
	//nachsehen ob ein shop generiert werden darf
	if (!array_contains(obj_Player.roomsBeenTo, "rm3_1") && !array_contains(obj_Player.roomsBeenTo, "rm3_2") && obj_Player.roomsPassed >= 5)
	{
		var shopAllowed = true;	
	}
	else
	{
		var shopAllowed = false
	}
	
	//nachsehen ob ein Schatzraum generiert werden darf
	if (array_length(obj_Player.roomsBeenTo)>=1){
		if(string_starts_with((obj_Player.roomsBeenTo[array_length(obj_Player.roomsBeenTo)-1]), "rm2")) //wenn der letzte raum ein treasure raum war
		{
			var treasureAllowed = false;
		}
		else
		{
			var treasureAllowed = true;
		}
	}
	else
		{
			var treasureAllowed = true;
		}
	
	// raumtyp basierend auf erlaubtem shop auswählen
	if (treasureAllowed){
		if(shopAllowed == true)
		{
			var roomType = round(random(2)+1); //Gegner, shops, schätze
		}
		else if (shopAllowed == false)
		{
			var roomType = round(random(2-1)+1); //Gegner, schätze
		}
	}
	else
	{
		if(shopAllowed == true)
		{
			var roomType = round(random(2)+1); //Gegner, shops
			if (roomType = 2)
			{
				roomType = 3;
			}
		}
		else if (shopAllowed == false)
		{
			var roomType = 1; //Gegner
		}
	}
	var roomNrAmount = 0; // an der vorhandenen Raumanzahl des Typs auswürfeln || gerade statisch
	var tempRoomList = obj_Player.allrooms;
	// nachsehen wieviele Räume es vom Raumtypen gibt
	for (var ix = 0; ix < array_length(tempRoomList); ix ++)
	{
		var tempSubstring = string_split(tempRoomList[ix], "_");
		if(tempSubstring[0] == "rm" + string(roomType))
		{
 
	        roomNrAmount += 1;
		}
	}
	var roomNr = round(random(roomNrAmount-1) +1)
	var roomName = "rm" + string(roomType) + "_" + string(roomNr);
	var roomID = asset_get_index(roomName);


	// räume die nicht gerade erst waren laden
	if (!array_contains(obj_Player.roomsBeenTo, roomName))
		{
			room_goto(roomID);
			obj_Player.roomsPassed++;
			if (obj_Player.roomsPassed > 3)
		{
			array_shift(obj_Player.roomsBeenTo)
		}
		array_push(obj_Player.roomsBeenTo, roomName)
	}
	else
	{
		NextRoomDefault();
	}

}