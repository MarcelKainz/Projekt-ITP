slider_width = 300;
slider_height = 10;
dragging = false;

if (!variable_global_exists("volume")) {
    global.volume = 1.0; 
}

knob_x = global.volume * slider_width;