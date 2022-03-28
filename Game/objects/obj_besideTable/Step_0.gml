/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_space) && myTextBox == noone && distance_to_object(obj_player)== 0 {
	myTextBox = instance_create_layer(x,y,"Text",obj_textbox);
	myTextBox.text = "Looking through the drawers, you don't find anything."
	global.TEXTBOX = 1;
}

else if keyboard_check_pressed(vk_space) && myTextBox != noone{
	instance_destroy(myTextBox);
	myTextBox = noone;
	global.TEXTBOX = 0;
}
