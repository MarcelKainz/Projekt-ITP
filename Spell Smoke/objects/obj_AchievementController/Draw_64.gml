if (global.currentAchievement != undefined)
{
    var ach = global.currentAchievement;

    var xx = popup_x;
    var yy = popup_y;

    var w = 380;
    var h = 95;

    var iconX = xx + 32;
    var iconY = yy + h * 0.5;

    var textX = xx + 110;
    var textW = 125;
	
    // Schatten
    draw_set_color(c_black);
    draw_set_alpha(0.4);
    draw_rectangle(xx + 4, yy + 4, xx + w + 4, yy + h + 4, false);
    draw_set_alpha(1);

    // Background
    draw_set_color(make_color_rgb(20,20,20));
    draw_rectangle(xx, yy, xx + w, yy + h, false);

    // Achievement unlocked
    draw_set_color(make_color_rgb(85,180,85));
    draw_text(textX+10, yy + 8, "Achievement Unlocked!");

    // Titel
    draw_set_color(make_color_rgb(255,220,80));
    draw_text(textX+10, yy + 28, ach.title);

    // Beschreibung
    draw_set_color(c_white);
    draw_text_ext(
        textX+10,
        yy + 60,
        ach.desc,
        14,
        textW
    );

    // Icon
    // Standard-Scale ist 1
    var spriteScale = 1;
    var tmp = iconY;

    // Da ach.sprite eine echte "ref sprite" ID ist, prüfen wir DIREKT ohne Anführungszeichen!
    switch(ach.sprite)
    {
        case spr_EasyDifficultyButtonGold:
        case spr_EasyDifficultyButtonDiamond:
        case spr_MediumDifficultyButtonGold:
        case spr_MediumDifficultyButtonDiamond:
        case spr_HardDifficultyButtonGold:
        case spr_HardDifficultyButtonDiamond:
            spriteScale = 0.75;
			iconX += 10;
            // Falls das Icon zu hoch/tief sitzt, kannst du diesen Y-Offset anpassen (z.B. iconY - 10)
            tmp = iconY+20; 
            break;
            
        default:
            spriteScale = 2;
            tmp = iconY-5;
            break;
    }
	
    // Da es eine echte Referenz ist, nutzen wir direkt ach.sprite (ohne asset_get_index)

    draw_sprite_ext(
        ach.sprite,
        0,
        iconX-10,
        tmp,
        spriteScale,  // X-Scale (0.5 für Buttons, 1 für andere)
        spriteScale,  // Y-Scale (0.5 für Buttons, 1 für andere)
        0,
        c_white,
        1
    );
}

draw_set_color(c_white);
draw_set_halign(fa_left);	
draw_set_valign(fa_top);