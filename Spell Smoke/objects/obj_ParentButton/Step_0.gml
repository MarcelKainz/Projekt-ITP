if (position_meeting(mouse_x, mouse_y, id)) 
{
    target_scale = 1.6;
    target_color = c_gray;
	
	if (sound_cue){
		if (!audio_is_playing(sou_NextRoom)){
			var hoverSound = audio_play_sound(sou_NextRoom, 1, false);
			audio_sound_pitch(hoverSound, 0.5);
			audio_sound_gain(hoverSound, 0.5, 0);
			sound_cue = false;
		}
	}
} 
else 
{
    target_scale = 1.5;
    target_color = c_white;
	sound_cue = true;
}

image_xscale = lerp(image_xscale, target_scale, 0.2);
image_yscale = lerp(image_yscale, target_scale, 0.2);
image_blend  = merge_color(image_blend, target_color, 0.2);