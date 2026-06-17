var player_exists = instance_exists(obj_Player);

if (player_exists != player_was_alive) {
 
    audio_stop_sound(current_music);
    
    if (player_exists) {
        current_music = audio_play_sound(sou_Theme, 10, true);
    } else {
		if(room == rm_DeathScreen){
			current_music = audio_play_sound(sou_Lose, 10, false);
		}
		else if(room == rm_VictoryScreen){
			current_music = audio_play_sound(Sou_Victory, 10, false);
		}
		else{
			current_music = audio_play_sound(sou_StartMenu, 10, true);
		}
    }

    player_was_alive = player_exists;
}