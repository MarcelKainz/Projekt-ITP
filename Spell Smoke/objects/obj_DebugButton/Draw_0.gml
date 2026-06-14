event_inherited();

if(global.debug){
	sprite_index = spr_DebugModeSelected;
}

else
{
	sprite_index = spr_DebugMode;
}

draw_self();
draw_text(x+128, y, "Debug Mode");