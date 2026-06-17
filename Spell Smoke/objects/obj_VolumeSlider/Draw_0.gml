// Linie
draw_rectangle(
    x,
    y,
    x + slider_width,
    y + slider_height,
    false
);

// Knopf
draw_circle(
    x + knob_x,
    y + global.volume / 2,
    15,
    false
);

// Text
draw_text(x, y - 40,
    "Master Volume: " + string(round(global.volume * 100)) + "%");