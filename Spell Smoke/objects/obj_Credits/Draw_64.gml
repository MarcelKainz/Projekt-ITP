draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);

// Sichtbarer Bereich fuer die Credits
var clip_x = 0;
var clip_y = 500;
var clip_w = display_get_gui_width()+300;
var clip_h = display_get_gui_height()+300;



// Alles außerhalb dieses Bereichs wird abgeschnitten
gpu_set_scissor(clip_x, clip_y, clip_w, clip_h);

var center_x = display_get_gui_width() / 2;
var draw_y = credits_pos;

draw_text(center_x, draw_y, "CREDITS");

draw_y += 60;
draw_text(center_x, draw_y, "Thank you for Playing");

draw_y += 50;
draw_text(center_x, draw_y, "Developed by");
draw_y += 30;
draw_text(center_x, draw_y, "Group 777");

draw_y += 50;
draw_text(center_x, draw_y, "Directed and Lead by");
draw_y += 30;
draw_text(center_x, draw_y, "Marcel Kainz");

draw_y += 50;
draw_text(center_x, draw_y, "Programmed by");
draw_y += 30;
draw_text(center_x, draw_y, "Lukas Thaler");

draw_y += 50;
draw_text(center_x, draw_y, "Graphics and Sprites");
draw_y += 30;
draw_text(center_x, draw_y, "Marvin Pauer");

draw_y += 50;
draw_text(center_x, draw_y, "Musik & Sound");
draw_y += 30;
draw_text(center_x, draw_y, "Lukas Thaler");

draw_y += 70;
draw_text(center_x, draw_y, "Special Thanks to");
draw_y += 30;
draw_text(center_x, draw_y, "Family, Friends and all Testers");

draw_y += 80;
draw_text(center_x, draw_y, "Thank you for your Support!");

// Scissor wieder deaktivieren
gpu_set_scissor(0, 0, clip_w, clip_h);