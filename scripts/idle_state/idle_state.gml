if keyboard_check(ord("W"))
{
	sprite_index = disafter_jumpsquat;
}
	
if keyboard_check(ord("A"))
{
	sprite_index = disafter_running;
	image_xscale = -1;
}
	
if keyboard_check(ord("D"))
{
	sprite_index = disafter_running;
	image_xscale = 1;
}