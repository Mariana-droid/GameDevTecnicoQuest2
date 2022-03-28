/// @description Insert description here
// You can write your code in this editor

up_key = keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(ord("S"));
accept_key = keyboard_check_pressed(vk_enter);
accept_key2 = keyboard_check_pressed(vk_space);

pos += down_key - up_key;

if pos>= op_length {pos = 0}
if pos < 0 {pos = op_length -1}


if accept_key || accept_key2{
	switch (pos){
		case 0:
			room_goto_next();
			break;
		case 1:
			game_end();
			break;
	
	}
}