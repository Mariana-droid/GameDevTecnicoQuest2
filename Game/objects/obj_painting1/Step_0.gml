/// @description Insert description here
// You can write your code in this editor
//check if you have the object required and are holding it
if keyboard_check_pressed(vk_space) && myTextBox == noone && distance_to_object(obj_player)< 37
&& scissors == 0 &&  (inst_2E21EA1C.pos != 1 || inst_2E21EA1C.inventory[inst_2E21EA1C.pos] != 1){
	myTextBox = instance_create_layer(x,y,"Text",obj_textbox);
	myTextBox.text = "A beautiful painting showing a family."
	global.TEXTBOX = 1;
}

else if keyboard_check_pressed(vk_space) && myTextBox != noone{
	instance_destroy(myTextBox);
	myTextBox = noone;
	global.TEXTBOX = 0;
	keypad = 0;
}
//use the object
else if keyboard_check_pressed(vk_space) && myTextBox == noone && distance_to_object(obj_player)< 37
&& scissors == 0 && inst_2E21EA1C.pos == 1 && inst_2E21EA1C.inventory[inst_2E21EA1C.pos] == 1{
	myTextBox = instance_create_layer(x,y,"Text",obj_textbox);
	myTextBox.text = "Using the scissors on the painting, it peels away to reveal a safe!"
	audio_play_sound(snd_paperRipping,10,false);
	image_index = 1;
	global.TEXTBOX = 1;
	scissors = 1;
}

//the keypad
else if keyboard_check_pressed(vk_space) && myTextBox == noone && distance_to_object(obj_player)< 37
&& scissors == 1 && keypad == 0{
	myTextBox = instance_create_layer(x,y,"Text",obj_textbox);
	myTextBox.text = "Type out the code:\n"
	keypad = 1;
	global.TEXTBOX = 1;
}


else if keypad == 1 && keyboard_check_pressed(vk_anykey){
	if keyboard_key >= ord("0") && keyboard_key <= ord("9"){
		number[number_typed] = keyboard_key - ord("0");
		myTextBox.text+= string(keyboard_key - ord("0")) + "    "; 
		number_typed += 1;
		if number_typed ==4 {
			
			var equal = true;
			
			for(var i = 0; i < 4; i++) {
				if number[i] != answer[i] {
					equal = false;
					break;
				}
			}
			if equal == true{
				image_index = 2;
				inst_2E21EA1C.inventory[3] = 1;
				audio_play_sound(snd_safeOpening,10,false);
			}
		instance_destroy(myTextBox);
		keypad =0;
		myTextBox = noone;
		global.TEXTBOX = 0;
		number_typed = 0;
		}
		
	}

}