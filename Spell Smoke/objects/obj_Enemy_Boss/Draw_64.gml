var centerX = display_get_gui_width() / 2;
var bottomY = display_get_gui_height();
draw_healthbar(centerX - 300, bottomY - 100, centerX + 300, bottomY - 50, hp / maxHp * 100, c_black, c_orange, c_green, 0, true, true)