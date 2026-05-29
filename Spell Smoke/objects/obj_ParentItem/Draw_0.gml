draw_self();

draw_set_halign(fa_center); 
draw_set_valign(fa_middle);
 
if(price!=0)
{
	draw_text_transformed(x+sprite_width/2, y+sprite_height+5, price, textScale, textScale, 0);
	draw_sprite_ext(spr_Bone, real, x+20, y+sprite_height, 0.5, 0.5, 0, c_white, 1);
}


	switch(statToIncrease){
	
		case "sprintMultiplier":
			name = "Boots of speed";
			description = $"Grants the user {increaseModifier} more speed";
		break;
	
		case "damageMultiplier":
			name = "Relic of strength";
			description = $"Grants the user {increaseModifier} more strength";
		break;
	
		case "max_hp":
			name = "Life Fruit";
			description = $"Grants the user {increaseModifier} more health";
		break;
	
		case "heal":
			name = "Healing Potion";
			description = $"Restores {increaseModifier} health";
		break;
	
		case "key":
			name = "Key";
			description = "A Key to open locked Chests";
		break;
	}

draw_text_transformed(x+sprite_width/2, y-sprite_height/2-16, name, textScale, textScale, 0);
draw_text_transformed(x+sprite_width/2, y-sprite_height/2, description, textScale-0.1, textScale-0.1, 0);