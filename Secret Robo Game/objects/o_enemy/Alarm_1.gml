/// @description Insert description here
// You can write your code in this editor
display_manager.screen_shake = true;


// play animation

instance_create_depth(irandom_range(x-10,x+10),irandom_range(y-10,y+10),-20,o_exploder);
instance_create_depth(irandom_range(x-10,x+10),irandom_range(y-10,y+10),-20,o_exploder);
instance_create_depth(irandom_range(x-10,x+10),irandom_range(y-10,y+10),-20,o_exploder);
instance_create_depth(irandom_range(x-10,x+10),irandom_range(y-10,y+10),-20,o_chunks);
instance_create_depth(irandom_range(x-10,x+10),irandom_range(y-10,y+10),-20,o_chunks);
instance_create_depth(irandom_range(x-10,x+10),irandom_range(y-10,y+10),-20,o_chunks);
alarm[2] = 1;// now go to finish up and destroy.