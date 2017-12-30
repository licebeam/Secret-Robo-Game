/// @description Insert description here
// You can write your code in this editor

//screenshake
screen_shake = false;
shaker = 20;

ideal_width = 0
ideal_height = 256;
zoom = 1;
max_zoom = 1; 
display_width = display_get_width();
display_height = display_get_height();

aspect_ratio = display_width/display_height;
ideal_width = round(ideal_height * aspect_ratio);

//pixel perfect scaling
if(display_width mod ideal_width != 0)
{
	var d = round(display_width/ideal_width);
	ideal_width = display_width/d;
}
if(display_height mod ideal_height !=0)
{
	var d = round(display_height/ideal_height);
	ideal_height = display_height/d;
}
//check for odd numbers
if(ideal_width & 1)
	ideal_width++;
if(ideal_height & 1)
	ideal_height++;
	
//calculate max zoom
max_zoom = floor(display_width/ideal_width);

window_set_size(ideal_width,ideal_height);
display_set_gui_size(ideal_width,ideal_height);
surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);


alarm[0] =1; //check 

camera = camera_create();
globalvar view_x,view_y,view_w,view_h;
view_x = 0;
view_y = 0;
view_w = ideal_width;
view_h = ideal_height;



room_goto_next();

