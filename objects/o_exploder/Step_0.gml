/// @description Insert description here
// You can write your code in this editor
//turn invis ever other frame.
if global.pause == false{
	image_speed = 2;
y -= irandom_range(1,3);
}

if global.pause == true{
	image_speed = 0;
	alarm[0] ++;
}