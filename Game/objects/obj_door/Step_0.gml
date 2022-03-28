/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_space) && myTextBox == noone && distance_to_object(obj_player)== 0 
&& (inst_2E21EA1C.pos != 3 || inst_2E21EA1C.inventory[inst_2E21EA1C.pos] != 1){
	myTextBox = instance_create_layer(x,y,"Text",obj_textbox);
	myTextBox.text = "The door is locked. There must be a key in the room somewhere."
	global.TEXTBOX = 1;
}

else if keyboard_check_pressed(vk_space) && myTextBox != noone{
	instance_destroy(myTextBox);
	myTextBox = noone;
	global.TEXTBOX = 0;
	room_goto_previous()
}
else if keyboard_check_pressed(vk_space) && myTextBox == noone && distance_to_object(obj_player)== 0 
&& inst_2E21EA1C.pos == 3 && inst_2E21EA1C.inventory[inst_2E21EA1C.pos] == 1{
	myTextBox = instance_create_layer(x,y,"Text",obj_textbox);
	myTextBox.text = "Congratulations! You finished the game!"
	audio_play_sound(snd_doorOpening,10,false);
	global.TEXTBOX = 1;
}
