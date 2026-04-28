function NextRoomDefault(){
	var roomType = random(4); //statisch raumart auswürfeln
	var roomNr = random(2); // statisch raumnummer auswürfeln
	show_message("rm" + roomType + "_" + roomNr);
	//room_goto("rm" + roomType + "_" + roomNr);
}