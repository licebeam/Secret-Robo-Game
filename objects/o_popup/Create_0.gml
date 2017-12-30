/// @description Insert description here
// You can write your code in this editor
self.depth = -10000;
draw_set_font(f_main);
draw_set_color(c_white);
draw_set_alpha(1)

mytext1 = "poop"; 
mytext2 = "poop2";

button1 = "Yes";
button2 = "No"; 


botpoptext = "Hit Spacebar to go Down!"; 
botpop = false;

image_speed = 0;




//slideup var
slide_y = 240;
slid = false;
slide_text = "Mt. Bone";
slide1_timer = 30;


//slideup2 var
slide_y2 = 240;
slid2 = true;
slide_text2 = "Killed Somethin";
slide1_timer2 = 30;


//room transition code
room_change = false;
room_timer = 60;
screen = draw_rectangle_color(0,0,1000,1000,c_black,c_black,c_black,c_black,0);

//dialog popupvariables
dpop_size =1;
dpop_vis = false;
dpop_x = 60;
dpop_y = 60;
dpop_text = "I am empty";
dpop_icon = 1;