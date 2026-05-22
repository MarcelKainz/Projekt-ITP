//Returns a json as a struct
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
}