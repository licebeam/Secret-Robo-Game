/// @description Insert description here
// You can write your code in this editor
if (flash == true) {
   gpu_set_fog(true, c_white, 0, 0);
   draw_self();
   gpu_set_fog(false, c_black, 0, 0);
   flash = false;
}
else {
   draw_self();
}