/// @description Insert description here
//slide text

if room_timer <=30{
	
// Player Hp Bar
var hp_bar = draw_sprite(s_healthbar, o_player.player_hp, 10, 10); // this is the hp bar sprite.


draw_sprite(s_gui1, 2, 128, slide_y);
draw_text(128+32,slide_y+8,slide_text);

//kill slide text
draw_sprite(s_gui1, 2, 260, slide_y2);
draw_text(260+32,slide_y2+8,slide_text2);

//draw_sprite(s_gui1, 0, 0, 0);//top left 
draw_sprite(s_gui1, 1, 272, 0);
draw_sprite(s_gui1, 1, -73, 194);

//debug 
//draw_text(0,26,"Player State: " +string(o_player.state));
//draw_text(0,46,"Walking Animation: " + string(o_player.walk_anim));
//draw_text(0,56,"Standing Animation: " + string(o_player.stand_anim))
//draw_text(0,36,"Animation Speed: " + string(o_player.image_speed));;
//draw_text(0,66,"Image Index: " + string(o_player.image_index));;


//CODE FOR POPUP GUI STUFF
if botpop == true{
//draw_sprite(s_gui1, 1, 0, 0);
//draw_text(50,460, botpoptext);

} 
}
if room_change == true{
	draw_set_alpha(room_timer/30)
	 screen = draw_rectangle_color(0,0,1000,1000,c_black,c_black,c_black,c_black,0);
	 draw_set_alpha(1)
}
if room_change == false{
	//draw_set_alpha(1)
}


///create dialogue popup thing.
if dpop_vis == true{
	draw_sprite(s_gui1, 2, dpop_x, dpop_y);
	draw_text(dpop_x + 20, dpop_y, dpop_text);
}

