
if (keyboard_string != "") { 
    var input_char = string_char_at(keyboard_string, 1); 
    if (array_contains(number, input_char)) {
        text += input_char; 
    }
    keyboard_string = ""; 
}   