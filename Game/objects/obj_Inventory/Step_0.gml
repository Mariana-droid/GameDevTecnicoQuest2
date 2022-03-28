/// @description Insert description here
// You can write your code in this editor
right_key = keyboard_check_pressed(vk_right);
left_key = keyboard_check_pressed(vk_left);

pos += right_key - left_key;
if pos>= inventory_length {pos = 0}
if pos < 0 {pos = inventory_length -1}