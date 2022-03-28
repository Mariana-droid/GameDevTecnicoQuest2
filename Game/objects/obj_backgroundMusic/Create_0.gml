/// @description Insert description here
// You can write your code in this editor
if audio_is_playing(snd_BackgroundMusic){
	audio_stop_sound(snd_BackgroundMusic);
}
audio_play_sound(snd_BackgroundMusic,10,true);