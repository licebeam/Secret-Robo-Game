/// @description Jumping
if jump_time <= jump_frames {
	jump_anim = true; //animate the jump
	v_speed = jump_height;
	jump_time -= 1;
	if place_meeting(x, y + v_speed, o_walls) { // Head Bump Code
		while !place_meeting(x, y + sign(v_speed), o_walls) {
			y+=sign(v_speed);
		}
		v_speed = 0;
	}
	self.y += v_speed; 
}
if jump_time <= 0 {
	state = falling;
}
if keyboard_check_released(up_key){//check for key release
	state = falling;
}

//check for shooting
if keyboard_check_pressed(shoot_key) {
 state = shooting;	
}
//left right while jumping
//left right movement
if keyboard_check(right_key) {
	h_speed = + m_speed - 1;
	image_xscale = 1;
} else if keyboard_check(left_key) {
	h_speed = - m_speed + 1;
	image_xscale = -1;
} //else { h_speed = 0 ;} we don't want to lose momentum


if place_meeting(x + h_speed, y, o_walls) {
	while !place_meeting(x + sign(h_speed), y, o_walls) {
		x+=sign(h_speed);
	}
	h_speed = 0;
}
self.x = self.x + h_speed


//animate my shit
if (jump_anim == true) {
	if(image_index > 4 and image_index < 3) {
      image_index = 3;
	}
	image_speed = .25;
}

