/// @description Insert description here
// You can write your code in this editor

//inventory
draw_sprite_stretched(spr_inventory,0,90,512,700,128);
a= 0;
for (var i = 0; i< inventory_length; i++){
	if inventory[i] == 1{
		switch (i){
			case 0:
				draw_sprite_stretched(spr_flashlight,0,120+a,530,100,100);
				break;
			case 1:
				draw_sprite_stretched(spr_scissors,0,120+a,530,100,100);
				break;
			case 2:
				draw_sprite_stretched(spr_paper,0,120+a,530,100,100);
				break;
			case 3:
				draw_sprite_stretched(spr_key,0,120+a,530,100,100);
				break;
		}
	}
	
	if pos == i{
		image_speed = 0.06;
		draw_sprite_stretched(spr_inventorySelection,-1,160+a,590,40,40);
	}
	a += 170;
}