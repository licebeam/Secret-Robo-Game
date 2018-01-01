/// @description Insert description here
// You can write your code in this editor
if global.pause == false{
	if on_ground == false{
x += lr_drop; //do i go left or right
if (y > my_y and fall = false){
	y-=2;
}
if y <= my_y{ fall = true}

if fall == true{
	y+=3;
}
} 
}
//am I invincible? 
if alarm[0] <= 60{ almost_dead = true};
if almost_dead == true{
if (vis_timer >= 1) {visible = false; vis_timer--} else { visible = true; vis_timer = 4;}
}

if global.pause == true{
	alarm[0]++;	
}


// freeze frame code test
if freeze == true{
	freeze_time = 10
	freeze = false;
}
if freeze_time >= 1{
	global.pause = true;
	freeze_time -= 1;
}
if freeze_time == 0{
	global.pause = false;
	o_player.player_hp +=1;
    instance_destroy();
}