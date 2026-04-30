function NextRoomDefault(){

	//nachsehen ob ein shop generieren darf
	if (!array_contains(obj_Player.roomsBeenTo, "rm3_1"))
	{
		var shopAllowed = true;	
	}
	else
	{
		var shopAllowed = false
	}
	
	// raumtyp basierend auf erlaubtem shop auswählen
	if(shopAllowed == true)
	{
		var roomType = round(random(2)+1); //Räume mit shops
		show_debug_message(string(roomType) + " || shop allowed")
	}
	else if (shopAllowed == false)
	{
		var roomType = round(random(2-1)+1); //Räume ohne shops
		show_debug_message(string(roomType) + " || shop not allowed")
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