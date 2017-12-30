// @description Insert description here
// You can write your code in this editor

//slide up 1
if slid == false{
	if(slide_y >= 194){slide_y -= 1};
	if(slide_y <= 194){slide1_timer -= 1};
	if(slide1_timer <= 0){slid = true; }
}

//slide down 1
if (slid == true and slide_y <= 240 and slide1_timer <=0){
	slide_y += 1
	//if(slide_y == 240){slid = false};
}

//kill slider
//slide up 2
if slid2 == false{
	if(slide_y2 >= 194){slide_y2 -= 1};
	if(slide_y2 <= 194){slide1_timer2 -= 1};
	if(slide1_timer2 <= 0){slid2 = true; }
}

//slide down 2
if (slid2 == true and slide_y2 <= 240 and slide1_timer2 <=0){
	slide_y2 += 1
	
}

if room_change == true{
	room_timer -=1;	
}
if room_timer <= 0{
	room_change = false;
	room_timer = 30;
}