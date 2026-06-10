/*//Returns a json as a struct
function import_json(_file){
	jsonString = "";
	fil = file_text_open_read(_file);
	while (!file_text_eof(fil)) {
		jsonString += file_text_read_string(fil);
		file_text_readln(fil);
	}
	file_text_close(fil);
	return json_parse(jsonString);
}

//exports a given struct into a named .json file. Overwrites previous contents
function export_json(str, _file) {
	var jString = json_stringify(str);
	show_message(jString);
	var fil = file_text_open_write(_file);
	file_text_write_string(fil, jString);
	file_text_close(fil);
}*/

function SaveAchievements(_file, achievements){ //array of achievements, called in rm_StartMenu creation
	fil = file_text_open_write(_file);
	for (var i = 0; i < array_length(achievements); i++) {
		file_text_write_string(fil, achievements[i]);
		file_text_writeln(fil); //next line
	}
	file_text_close(fil);
}

function LoadAchievements(_file, achievements){
	if (!file_exists(_file))
		return;
	fil = file_text_open_read(_file);
	while (!file_text_eof(fil)) { //while not end of file
		var line = file_text_read_string(fil)
		//show_message(line);
		if (!array_contains(achievements, line))
			array_push(achievements, line); //read input
		file_text_readln(fil); //next line
	}
	file_text_close(fil);
}