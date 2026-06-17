var agree = audio_play_sound(sou_Lock, 1, false);

var pitch = clicked/2;

audio_sound_pitch(agree, pitch);

if (clicked == amount-1){
	global.difficultyCompleted = [];
	file_delete("save.txt");
	clicked = 0;
	audio_play_sound(sou_ItemPickup, 1, false);
}
else{
	clicked ++;
}