/// @description Hurt
hit = true; 


//animation 
if(!(image_index <= 3 and image_index >= 2)) {
	image_index = 2;
	flash = true;
}
image_speed = 1; 
	
if (image_index >= 2.5) {
	if (image_xscale = 1) {
			h_speed = - m_speed * 2;
	}
	if (image_xscale = -1) {
		h_speed = + m_speed * 2;
	}
	state = neutral;
	alarm[0] = 60; // time before I can be hit again
}

//collision
if place_meeting(x + h_speed, y, o_walls) { // check for walls.
	while !place_meeting(x + sign(h_speed), y, o_walls) {
		x += sign(h_speed);
	}
	h_speed = 0;
}
self.x = self.x + h_speed; 

if place_meeting(x, y + v_speed, o_walls){ // check for ceiling. 
	while !place_meeting(x, y + sign(v_speed), o_walls) {
		y += sign(v_speed);
	}
	v_speed = 0;
}
self.y += v_speed; 