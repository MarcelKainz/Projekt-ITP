for (var i = 1; i <= string_length(keyboard_string); i++)
{
    var ch = string_char_at(keyboard_string, i);

    if (array_contains(number, ch))
    {
        text += ch;
    }
}

keyboard_string = "";

if (keyboard_check_pressed(vk_enter))
{
    global.seed = int64(text);

    random_set_seed(global.seed);

    show_debug_message("Seed gesetzt: " + string(global.seed));
}