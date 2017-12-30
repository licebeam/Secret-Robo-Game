/// @description Shooting

	if(!(image_index <= 7 and image_index >=5)){
      image_index = 5
	}
	image_speed = 1;
	
	if image_index >=6.5 {
		if image_xscale = 1{
		 instance_create_depth(x+16,y-4,-600,o_bullet)
		}
		if image_xscale = -1{
		 instance_create_depth(x-16,y-4,-600,o_bullet)
		}
		 state = neutral;
	 
	}
	
	