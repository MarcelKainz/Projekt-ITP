slider_width = 300;
slider_height = 10;
dragging = false;

if (!variable_global_exists("music")) {
    global.music = 1.0; 
}

knob_x = global.music * slider_width;