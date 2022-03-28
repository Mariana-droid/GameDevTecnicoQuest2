/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_space) && myTextBox == noone && distance_to_object(obj_player)== 0 && scissors = 0{
	myTextBox = instance_create_layer(x,y,"Text",obj_textbox);
	myTextBox.text = "The wardrobe if full of clothes, but pulling them back, you can see a pair of scissors."
	audio_play_sound(snd_doorOpening,10,false);
	inst_2E21EA1C.inventory[1] = 1;
	global.TEXTBOX = 1;
	scissors = 1;
}

else if keyboard_check_pressed(vk_space) && myTextBox != noone{
	instance_destroy(myTextBox);
	myTextBox = noone;
	global.TEXTBOX = 0;
}

else if keyboard_check_pressed(vk_space) && myTextBox == noone && distance_to_object(obj_player)== 0 && scissors =1{
	myTextBox = instance_create_layer(x,y,"Text",obj_textbox);
	myTextBox.text = "You can only find clothes in the wardrobe. And no pretty ones."
	audio_play_sound(snd_doorOpening,10,false);
	global.TEXTBOX = 1;
	flashlight =1;
}