if(debug){
	sprite_index = spr_DebugModeSelected;
}

else
{
	sprite_index = spr_DebugMode;
}

draw_self();
draw_text(x-48, y-100, "Debug Mode");