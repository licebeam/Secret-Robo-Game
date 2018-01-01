/// @description Falling State

if place_meeting(x, y + 1, o_walls) { // WHEN LANDING
	//state falling
	jump_time = jump_frames;
	state = neutral;
	//create the smoke on landing
	if !instance_exists(o_effects) {
		instance_create_depth(o_player.x, o_player.y, -600, o_effects); // create smoke on moving
	}
}

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
fall_anim = true;

//check for shooting ** THIS NEEDS TO BE FIXED
if keyboard_check_pressed(shoot_key) {
 state = shooting;	
}

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

//am I invincible? 
if (hit == true and vis_timer >= 1) {visible = false; vis_timer--} else { visible = true; vis_timer = 4;}

//animate my shit
if (fall_anim == true) {
	if(!(image_index <= 5 and image_index >= 4)) {
      image_index = 4;
	}
	image_speed = .25;
}