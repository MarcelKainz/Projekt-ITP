draw_self();

draw_set_halign(fa_center); 
draw_set_valign(fa_middle);

draw_text_transformed(x, y+48, title, 1, 1, 0);
draw_text_transformed(x, y+64, description, 0.8, 0.8, 0);