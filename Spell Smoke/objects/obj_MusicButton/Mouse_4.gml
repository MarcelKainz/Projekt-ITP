event_inherited();

global.musicMuted = !global.musicMuted;

if (global.musicMuted)
{
    audio_sound_gain(sou_StartMenu, 0, 0);
    audio_sound_gain(sou_Theme, 0, 0);
}
	
else
{
    audio_sound_gain(sou_StartMenu, global.music, 0);
    audio_sound_gain(sou_Theme, global.music, 0);
}