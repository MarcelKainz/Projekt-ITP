draw_self();

if (is_listening) {
    draw_text(x, y, "[Neue Taste eingeben]");
} else {
    var _current_keycode = buttonToChange;
    var _readable_text = key_to_string(_current_keycode);
    draw_text(x, y, _readable_text);
}

draw_text(x, y-32, showText);