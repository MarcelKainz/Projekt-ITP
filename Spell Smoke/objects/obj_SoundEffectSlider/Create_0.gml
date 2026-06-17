slider_width = 300;
slider_height = 10;
dragging = false;

if (!variable_global_exists("sound")) {
    global.sound = 0.4; 
}

knob_x = global.sound * slider_width;