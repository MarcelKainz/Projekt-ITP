
var centerX = display_get_gui_width() * 0.5;
var bottomY = display_get_gui_height();

var barW = 600;
var barH = 24;

var left = centerX - barW * 0.5;
var top = bottomY - 80;

var hpPercent = hp / maxHp;
var hpColor = merge_color(c_red, c_lime, hpPercent);

// Name größer
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

draw_set_color(c_white);
draw_text(centerX, top - 10, "The infected King");

// Schwarzer Außenrahmen
draw_set_color(c_black);
draw_rectangle(
    left - 3,
    top - 3,
    left + barW + 3,
    top + barH + 3,
    false
);

// Dunkler Hintergrund
draw_set_color(make_color_rgb(20,20,20));
draw_rectangle(
    left,
    top,
    left + barW,
    top + barH,
    false
);
draw_set_color(c_white);

// HP
draw_set_color(hpColor);
draw_rectangle(
    left,
    top,
    left + (barW * hpPercent),
    top + barH,
    false
);
draw_set_color(c_white);

// Grauer Innenrahmen
draw_set_color(make_color_rgb(90,90,90));
draw_rectangle(
    left,
    top,
    left + barW,
    top + barH,
    true
);
draw_set_color(c_white);