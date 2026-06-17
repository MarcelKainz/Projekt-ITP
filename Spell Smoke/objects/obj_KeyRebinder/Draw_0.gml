draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);

if (is_listening) {
    draw_text(x, y, "[Taste drücken]");
} else {
    var _current_keycode = variable_global_get(buttonToChange);
    var _readable_text = key_to_string(_current_keycode);
    draw_text(x, y, _readable_text);
}