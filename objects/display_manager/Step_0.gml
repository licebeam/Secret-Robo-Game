/// @description Insert description here
// You can write your code in this editor
var tview_x = o_player.x - view_w/2;
var tview_y = o_player.y - view_h/2;
//zoom
if(keyboard_check_pressed(ord("Z")))
{
	zoom++;
	
	if(zoom>max_zoom)
		zoom = 1;
		
	window_set_size(ideal_width*zoom, ideal_height*zoom);
	surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
	alarm[0] = 1;
}

//follow player
if screen_shake == false{
view_x = tview_x;
view_y = tview_y;
view_x = clamp(view_x,0,room_width-view_w);
view_y = clamp(view_y,0,room_height-view_h);
}
if screen_shake == true and shaker >=1{
	shaker -=1; 
view_x = random_range(o_player.x - view_w/2,o_player.x - view_w/2 + 2);
view_y = random_range(o_player.y - view_h/2,o_player.y - view_h/2 + 2);
view_x = clamp(view_x,0,room_width-view_w);
view_y = clamp(view_y,0,room_height-view_h);
} else if shaker <=0{ screen_shake = false; shaker = 20;} 