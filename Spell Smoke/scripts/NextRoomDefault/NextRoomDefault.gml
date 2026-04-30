function NextRoomDefault(){
	var roomType = round(random(2)+1); //statisch raumart auswürfeln
	var roomNr = round(random(1)+1); // an der vorhandenen Raumanzahl des Typs auswürfeln || gerade statisch
	var roomName = "rm" + string(roomType) + "_" + string(roomNr);
	var roomID = asset_get_index(roomName);
	
	if (!array_contains(obj_Player.roomsBeenTo, roomName))
		{
			room_goto(roomID);
			obj_Player.roomsPassed++;
			if (obj_Player.roomsPassed > 3)
		{
			array_shift(obj_Player.roomsBeenTo)
		}

		array_push(obj_Player.roomsBeenTo, roomName)
	

		show_debug_message(roomName);
		show_debug_message(roomID);
		show_debug_message(obj_Player.roomsBeenTo)
		show_debug_message(obj_Player.allrooms)

	}
	else
	{
		NextRoomDefault();
	}
}