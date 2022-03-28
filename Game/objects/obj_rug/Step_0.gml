/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_space) && myTextBox == noone && distance_to_object(obj_player)== 0 && flashlight=0 {
	myTextBox = instance_create_layer(x,y,"Text",obj_textbox);
	myTextBox.text = "Feeling a lump, you pull the rug back.\n\nIt is a flashlight."
	global.TEXTBOX = 1;
	inst_2E21EA1C.inventory[0] = 1;
	flashlight =1;
	image_index = 1;
}

else if keyboard_check_pressed(vk_space) && myTextBox != noone{
	instance_destroy(myTextBox);
	myTextBox = noone;
	global.TEXTBOX = 0;
}

else if keyboard_check_pressed(vk_space) && myTextBox == noone && distance_to_object(obj_player)== 0 && flashlight =1{
	myTextBox = instance_create_layer(x,y,"Text",obj_textbox);
	myTextBox.text = "Just a regular old rug."
	global.TEXTBOX = 1;
	flashlight =1;
}