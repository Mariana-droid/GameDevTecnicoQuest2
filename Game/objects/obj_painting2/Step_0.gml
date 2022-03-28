/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_space) && myPainting == noone && distance_to_object(obj_player)< 37 
&& (inst_2E21EA1C.pos != 2 || inst_2E21EA1C.inventory[inst_2E21EA1C.pos] != 1){
	myPainting = instance_create_layer(x,y,"Text",obj_paintingBig);
	global.TEXTBOX = 1;
}

else if keyboard_check_pressed(vk_space) && myPainting != noone{
	instance_destroy(myPainting);
	myPainting = noone;
	global.TEXTBOX = 0;
}

else if  keyboard_check_pressed(vk_space) && myPainting == noone && distance_to_object(obj_player)< 37
&& inst_2E21EA1C.pos == 2 && inst_2E21EA1C.inventory[inst_2E21EA1C.pos] == 1{
	myPainting = instance_create_layer(x,y,"Text",obj_paintingBigCovered);
	global.TEXTBOX = 1;
}