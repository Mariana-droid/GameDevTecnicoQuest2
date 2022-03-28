/// @description Insert description here
// You can write your code in this editor
//Draw background

draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height,0,c_white,1);

width (1/sprite_width)

draw_set_font(font_main);
a = 0;
for (var i = 0; i< op_length; i++){
	var _c = c_white;
	draw_set_font(font_main);
	if pos == i{var _c = c_yellow}
	draw_text_color(x-7,y+op_border+a,option[i],_c,_c,_c,_c,1)
	a= a+50;
}

draw_set_font(font_main);
draw_text_transformed(x-82,y+130," Use the space key to interact with objects\nUse the arrow keys to change inventory slots",0.5,0.5,0)