if global.pause == false {
	/*
		MOVE CODE
	*/
	//check state
	image_speed = 0;
	event_user(state) //this is the finite state machine, it checks User Event 0 first
	
	//Game Over Code
	if player_hp <= 0 {display_manager.screen_shake = true; room_restart()}
}

if global.pause == true {
	image_speed = 0;	
}


// Clamp for Player hp
	player_hp = clamp(player_hp,1,12);