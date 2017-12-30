/// @description Insert description here
// You can write your code in this editor


//global variables
global.pause = false;
global.grav = 5; //speed of gravity



//Default values for player
h_speed = 6;
v_speed = 4;
jump_height = clamp(-1,0,-7);
jump_frames = 10;
jump_time = jump_frames; // frames
momentum_h = 0; 


//keys
up_key = vk_up;
down_key = vk_down;
left_key = vk_left;
right_key = vk_right;
shoot_key = vk_space;

//Player States
neutral = 0;
falling = 1;
jumping = 2;
shooting = 4;
state = neutral;
hit = false;

//megaman x speeds
m_speed = 3;// horizontal p/f



//animation variable // what animation is true currently.
stand_anim = false;
stand_start = 0;
shoot_anim = false;
jump_anim = false;
fall_anim = false;
walk_anim = false;
anim_timer = 0;
frame_counter = 15;//how fast the game animates.
