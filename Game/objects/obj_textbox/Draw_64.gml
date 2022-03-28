 /// @description Insert description here
// You can write your code in this editor


//draw textbox
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_sprite_stretched(spr_textbox,0,90,400,700,194);

draw_set_font(font_main);
//draw text



draw_text_ext_transformed(90+10,400+10,text, stringHeight, 500,1.4,1.4,0);