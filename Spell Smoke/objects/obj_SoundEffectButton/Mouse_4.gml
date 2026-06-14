event_inherited();

global.soundMuted = !global.soundMuted;

if (global.soundMuted)
{
    audio_sound_gain(sou_Hit, 0, 0);
    audio_sound_gain(sou_ItemPickup, 0, 0);
	audio_sound_gain(sou_Lock, 0, 0);
    audio_sound_gain(sou_NextRoom, 0, 0);
}
	
else
{
    audio_sound_gain(sou_Hit, global.sound, 0);
    audio_sound_gain(sou_ItemPickup, global.sound, 0);
	audio_sound_gain(sou_Lock, global.sound, 0);
    audio_sound_gain(sou_NextRoom, global.sound, 0);
}