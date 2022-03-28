right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));

if global.TEXTBOX == 0 {
	xspeed = (right_key - left_key)*movespeed;
	yspeed = (down_key - up_key)*movespeed;


//set sprite
	mask_index = sprite[DOWN];

	if yspeed == 0 {
		if xspeed > 0 {face = RIGHT}
		if xspeed < 0 {face = LEFT}
		}

	if xspeed > 0 && face == LEFT {face = RIGHT}
	if xspeed < 0 && face == RIGHT {face = LEFT}	
	if xspeed == 0 {
	
		if yspeed > 0 {face = DOWN};
		if yspeed < 0 {face = UP};
		}

	if yspeed > 0 && face == UP {face = DOWN}
	if yspeed < 0 && face == DOWN {face = UP}	
	sprite_index = sprite[face];

	//collisions
	if place_meeting(x + xspeed, y, obj_wall) == true{
		xspeed = 0;
		}
	
	if place_meeting(x, y + yspeed, obj_wall) == true{
		yspeed = 0;
		}


	x += xspeed;
	y += yspeed;

} else {
	xspeed = 0;
	yspeed = 0;
}

//animate
if xspeed == 0 && yspeed == 0{
	image_index = 0;
	}

//depth
depth = -bbox_bottom;