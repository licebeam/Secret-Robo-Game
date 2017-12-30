/// @description Insert description here
//slide text

if room_timer <=30{

draw_sprite(s_gui1, 2, 128, slide_y);
draw_text(128+32,slide_y+8,slide_text);

//kill slide text
draw_sprite(s_gui1, 2, 260, slide_y2);
draw_text(260+32,slide_y2+8,slide_text2);

//draw_sprite(s_gui1, 0, 0, 0);//top left 
draw_sprite(s_gui1, 1, 272, 0);
draw_sprite(s_gui1, 1, -73, 194);

//debug 
draw_text(0,26,"Player State: " +string(o_player.state));

draw_text(0,46,"Walking Animation: " + string(o_player.walk_anim));
draw_text(0,56,"Standing Animation: " + string(o_player.stand_anim))
draw_text(0,36,"Animation Speed: " + string(o_player.image_speed));;
draw_text(0,66,"Image Index: " + string(o_player.image_index));;
//draw_sprite(icons, 0, 26, 8);
//draw_sprite(icons, 0, 36, 8);
//draw_sprite(icons, 0, 46, 8);
//draw_sprite(icons, 0, 56, 8);
//draw_sprite(icons, 0, 66, 8);
//draw_sprite(icons, 0, 76, 8);
//draw_sprite(icons, 0, 86, 8);
//draw_sprite(icons, 0, 96, 8);
//draw_text(0,0, "turn count" + string(o_player.turn_count))
//draw_text(0,20,"p active" + string(o_player.active))
//draw_text(0,40,"monster" + string(global.monstercount))
//draw_text(0,60,"mon turn"+ string(global.monturn))
//draw_text(0,20,string(o_monster.randir))

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