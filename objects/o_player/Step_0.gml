if global.pause == false {
	/*
		MOVE CODE
	*/
	//check state
	image_speed = 0;
	event_user(state) //this is the finite state machine, it checks User Event 0 first
}

if global.pause == true {
	image_speed = 0;	
}