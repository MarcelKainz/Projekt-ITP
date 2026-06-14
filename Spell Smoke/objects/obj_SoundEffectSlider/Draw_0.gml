// Linker Bereich (weiß)
draw_set_color(c_white);
draw_rectangle(
    x,
    y,
    x + knob_x,
    y + slider_height,
    false
);

// Rechter Bereich (schwarz)
draw_set_color(c_black);
draw_rectangle(
    x + knob_x,
    y,
    x + slider_width,
    y + slider_height,
    false
);

// Fester grauer Rahmen
draw_set_color(c_gray);
draw_rectangle(
    x + 1,
    y + 1,
    x + slider_width + 1,
    y + slider_height + 1,
    true
);

// Knopf
draw_set_color(c_white);
draw_circle(
    x + knob_x,
    y + slider_height / 2,
    15,
    false
);

// Text

draw_set_color(c_white);
draw_text(x, y - 40,
    "Sound Effect Volume: " + string(round(global.sound * 100)) + "%");