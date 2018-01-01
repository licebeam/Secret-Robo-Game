/// @description Neutral State

if !place_meeting(x, y + 1, o_walls) { // o_walls is also the floor for all cases
	state = falling;
} else if keyboard_check_pressed(up_key) { // JUMP CODE
	state = jumping;
}

//check for shooting
if keyboard_check_pressed(shoot_key) {
 state = shooting;	
}
if keyboard_check_pressed(down_key){

}

//left right movement
if keyboard_check(right_key) {
	h_speed = + m_speed;
	stand_anim = false;
	walk_anim = true;
	image_xscale = 1;
	if !instance_exists(o_effects){
		instance_create_depth(o_player.x,o_player.y,-600,o_effects); //create smoke on moving
	}
} else if keyboard_check(left_key) {
	h_speed = - m_speed;
	stand_anim = false;
	walk_anim = true; 
	image_xscale = -1;
	if !instance_exists(o_effects){
		instance_create_depth(o_player.x,o_player.y,-600,o_effects); //create smoke on moving
	}
} else {
	h_speed = 0; //this is neutral
}

if (h_speed == 0){stand_anim = true;} // change animation to standing at 0 speed

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



//am I invincible? 
if (hit == true and vis_timer >= 1) {visible = false; vis_timer--} else { visible = true; vis_timer = 4;}

// animate my shit
if (stand_anim == true) { // This is the standing animation
	walk_anim = false;
	if(!(image_index <= 2 and image_index >= 0)) { // this makes checks to see what index my sprite is before setting to the correct one. and animating between it.
      image_index = 0; // this is the index of the sprite i want to start at for this animation.
	}
	image_speed = .25; // this is the animation speed of the sprite. 
}

if (walk_anim == true) { // This is the walking animation
	stand_anim = false;
	if(!(image_index <= 5 and image_index >= 2)) {
      image_index = 2
	}
	image_speed = .25;
}
