/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_space) && myTextBox == noone && distance_to_object(obj_player)== 0
&& (inst_2E21EA1C.pos != 0 || inst_2E21EA1C.inventory[inst_2E21EA1C.pos] != 1) {
	myTextBox = instance_create_layer(x,y,"Text",obj_textbox);
	myTextBox.text = "You try looking under the bed, but you can't see a thing."
	global.TEXTBOX = 1;
}
else if keyboard_check_pressed(vk_space) && myTextBox != noone{
	instance_destroy(myTextBox);
	myTextBox = noone;
	global.TEXTBOX = 0;
}


else if  keyboard_check_pressed(vk_space) && myTextBox == noone && distance_to_object(obj_player)== 0
&& inst_2E21EA1C.pos == 0 && inst_2E21EA1C.inventory[inst_2E21EA1C.pos] == 1 && paper == 0{
	myTextBox = instance_create_layer(x,y,"Text",obj_textbox);
	myTextBox.text = "Using the flashlight, you are able to spot a torn paper under the bed.";
	global.TEXTBOX = 1;
	inst_2E21EA1C.inventory[2] = 1;
	paper = 1;
}

else if  keyboard_check_pressed(vk_space) && myTextBox == noone && distance_to_object(obj_player)== 0
&& inst_2E21EA1C.pos == 0 && inst_2E21EA1C.inventory[inst_2E21EA1C.pos] == 1 && paper == 1{
	myTextBox = instance_create_layer(x,y,"Text",obj_textbox);
	myTextBox.text = "Using the flashlight, you can't find anything else under the bed.";
	global.TEXTBOX = 1;
}

