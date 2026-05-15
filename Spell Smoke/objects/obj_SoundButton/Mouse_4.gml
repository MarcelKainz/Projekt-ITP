global.isMuted = !global.isMuted;

if (global.isMuted)
{
    audio_master_gain(0);
}
else
{
    audio_master_gain(global.volume);
}