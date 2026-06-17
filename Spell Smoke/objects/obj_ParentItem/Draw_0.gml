draw_self();

draw_set_halign(fa_center); 
draw_set_valign(fa_middle);
 
if(price!=0)
{
	draw_text_transformed(x+sprite_width/2, y+sprite_height+5, price, textScale, textScale, 0);
	draw_sprite_ext(spr_Bone, 0, x+20, y+sprite_height, 0.5, 0.5, 0, c_white, 1);
}


	switch(statToIncrease){
	
		case "sprintMultiplier":
			name = "Elixir of Speed";
			description = $"Grants the user {(increaseModifier / 1.25) * 100}% more sprint speed";
		break;
	
		case "damageMultiplier":
			name = "Relic of Strength";
			description = $"Grants the user {increaseModifier*100}% more strength";
		break;
	
		case "max_hp":
			name = "Life Fruit";
			description = $"Grants the user {increaseModifier} more health";
		break;
	
		case "heal":
			name = "Healing Potion";
			description = $"Restores {increaseModifier} health";
		break;
		
		case "greaterHeal":
			name = "Greater Healing Potion";
			description = $"Restores {increaseModifier} health";
		break;
	
		case "key":
			name = "Key";
			description = "A Key to open locked Chests";
		break;
		
		case "attackSpeed":
			name = "Diploma of the Mages";
			description = $"Allows for {(1-increaseModifier)*100}% faster cast spells";
		break;
		
		case "range":
			name = "Monarch's Monocle";
			description = $"Increases attack range by {increaseModifier}%";
		break;		
	}

draw_text_transformed(x+sprite_width/2, y-sprite_height/2-16, name, textScale, textScale, 0);
draw_text_transformed(x+sprite_width/2, y-sprite_height/2, description, textScale-0.1, textScale-0.1, 0);


