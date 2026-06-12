if (mouse_check_button_pressed(mb_left)) {
    if (position_meeting(mouse_x, mouse_y, id)) {
        is_listening = true;
    } else {
        is_listening = false;
    }
}

if (is_listening) {
    if (keyboard_check_pressed(vk_anykey)) {
        variable_global_set(buttonToChange, keyboard_lastkey);
        
        is_listening = false;
    }
}