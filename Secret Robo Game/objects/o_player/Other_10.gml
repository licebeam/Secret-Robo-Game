/// @description Nuetral State

if !place_meeting(x, y + 1, o_walls){
	//state falling
	state = falling;
} else if keyboard_check_pressed(up_key){ // JUMP CODE
	//jump state
	state = jumping;
	
}
//check for shooting
if keyboard_check_pressed(shoot_key){
 state = shooting;	
}
if keyboard_check_pressed(down_key){
	//ducking change sprite / look? 	
}
//get initial horizontal speed from movement into jump

//left right movement
if keyboard_check(right_key){
	h_speed = + m_speed;
	stand_anim = false;
	walk_anim = true;
	image_xscale = 1;
	if !instance_exists(o_effects){
	instance_create_depth(o_player.x,o_player.y,-600,o_effects);//create smoke on moving
	}
} else if keyboard_check(left_key){
	h_speed = - m_speed;
	walk_anim = true; 
	stand_anim = false;
	image_xscale = -1;
	if !instance_exists(o_effects){
	instance_create_depth(o_player.x,o_player.y,-600,o_effects);//create smoke on moving
	}
} else{h_speed = 0;}//this sets my neutral animation

if h_speed == 0{ stand_anim = true;}//change animation of not moving

if place_meeting(x + h_speed, y, o_walls){
	while !place_meeting(x + sign(h_speed), y, o_walls){
		x+=sign(h_speed);
	}
	h_speed = 0;
}
self.x = self.x + h_speed; 

if place_meeting(x, y + v_speed, o_walls){ //Head Bump Code
	while !place_meeting(x, y + sign(v_speed), o_walls){
		y+=sign(v_speed);
	}
	v_speed = 0;
}
self.y += v_speed; 




//animate my shit
if (stand_anim == true){
	walk_anim = false;
	if(!(image_index <= 2 and image_index >=0)){
      image_index = 0
	}
	image_speed = .25;
}
if (walk_anim == true){
	stand_anim = false;
	if(!(image_index <= 5 and image_index >=2)){
      image_index = 2
	}
	image_speed = .25;
}
