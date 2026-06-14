// Maus gedrückt auf Slider
if (mouse_check_button_pressed(mb_left))
{
    if (point_in_rectangle(mouse_x, mouse_y,
        x, y - 20,
        x + slider_width, y + 20))
    {
        dragging = true;
    }
}

// Maus loslassen
if (mouse_check_button_released(mb_left))
{
    dragging = false;
}

// Slider bewegen
if (dragging)
{
    knob_x = clamp(mouse_x - x, 0, slider_width);

    global.sound = knob_x / slider_width;

	if (!global.soundMuted)
	{
	    audio_sound_gain(sou_Hit, global.sound, 0);
	    audio_sound_gain(sou_ItemPickup, global.sound, 0);
		audio_sound_gain(sou_Lock, global.sound, 0);
	    audio_sound_gain(sou_NextRoom, global.sound, 0);
	}
}