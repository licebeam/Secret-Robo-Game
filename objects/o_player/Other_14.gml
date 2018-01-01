/// @description Shooting

if(!(image_index <= 7 and image_index >= 5)) {
	image_index = 5;
}
image_speed = 1; 
	
if (image_index >= 6.5) {
	if (image_xscale = 1) {
		instance_create_depth(x + 16, y - 4, -600, o_bullet);
	}
	if (image_xscale = -1) {
		instance_create_depth(x - 16, y - 4, -600, o_bullet);
	}
	if !place_meeting(x, y + 1, o_walls) { // o_walls is also the floor for all cases
	state = falling;
	} 
	state = neutral;
}

//below code makes sure you can move and fall when shooting. 
if !place_meeting(x, y + 1, o_walls) {
	//state falling
	v_speed += clamp(.5,0,5);
}

if place_meeting(x, y + v_speed, o_walls){ // Head Bump Code
	while !place_meeting(x, y + sign(v_speed), o_walls) {
		y += sign(v_speed);
	}
	v_speed = 0;
}
self.y += v_speed;
//left right movement while falling 
if keyboard_check(right_key) {
	h_speed = + m_speed - 1;
	image_xscale = 1;
} else if keyboard_check(left_key) {
	h_speed = - m_speed + 1;
	image_xscale = -1;
} //else { h_speed = 0 ;} can't lose momentum


if place_meeting(x + h_speed, y, o_walls) {
	while !place_meeting(x + sign(h_speed), y, o_walls) {
		x+=sign(h_speed);
	}
	h_speed = 0;
}

self.x = self.x + h_speed

