event_inherited();

global.isMuted = !global.isMuted;

if (global.isMuted)
{
    audio_master_gain(0);
}
else
{
    audio_sound_gain(sou_StartMenu, global.music, 0);
    audio_sound_gain(sou_Theme, global.music, 0);
}