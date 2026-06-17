var player_exists = instance_exists(obj_Player);
var should_change = (player_exists != player_was_alive);

if (current_music != -1 && !audio_is_playing(current_music)) {
    current_music = -1;
}

var sound_is_wrong = (player_exists && !audio_is_playing(sou_Theme)) || 
                     (!player_exists && current_music == -1 && room != rm_DeathScreen && room != rm_VictoryScreen);

if (should_change || sound_is_wrong) {
    
    if (audio_is_playing(current_music)) {
        audio_stop_sound(current_music);
    }
    
    if (player_exists) {
        current_music = audio_play_sound(sou_Theme, 10, true);
    } else {
        if (room == rm_DeathScreen) {
            current_music = audio_play_sound(sou_Lose, 10, false);
        } else if (room == rm_VictoryScreen) {
            current_music = audio_play_sound(sou_Victory, 10, false);
        } else {
            current_music = audio_play_sound(sou_StartMenu, 10, true);
        }
    }
    
    player_was_alive = player_exists;
}