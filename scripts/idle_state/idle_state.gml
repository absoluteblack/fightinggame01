if keyboard_check_pressed(ord("W"))
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

if keyboard_check(ord("S"))
{
	sprite_index = disafter_crouch;
}


if keyboard_check_pressed(ord("F"))
{
	charge_timer = 0;
	smash_released = false;
	hitbox_created = false;
	sprite_index = disafter_fsmash;
}

if keyboard_check_pressed(ord("R"))
{
	hit_xStrength = .3;
	hit_yStrength = 2;
	hit_existence_frames = 1;
	frames_between_multihits = 10;
	move_timer = 0;
	multihits_released = 0;
	smash_released = false;
	hitbox_created = false;
	sprite_index = disafter_nspecial;
}