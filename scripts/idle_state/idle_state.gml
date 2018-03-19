
if(character == "Disafter"){
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
if keyboard_check_pressed(ord("V"))
{
	charge_timer = 0;
	smash_released = false;
	hitbox_created = false;
	sprite_index = disafter_dsmash;
	
}

if keyboard_check_pressed(ord("R"))
{
	hit_xStrength = .3;
	hit_yStrength = 2;
	hit_existence_frames = 1;
	frames_between_multihits = 5;
	move_timer = 0;
	multihits_released = 0;
	smash_released = false;
	hitbox_created = false;
	sprite_index = disafter_nspecial;
	audio_play_sound(1,1,0);
}

if (keyboard_check_pressed(ord("E"))){
	sprite_index = disafter_jab;
	move_timer = 0;
	hitbox_created = false;
	audio_play_sound(2,1,0);
	
}

if(vsp > 0){
	sprite_index = disafter_rising;
	is_grounded = false;
	
}
}//endif disafter



/////character specific code below
if(character == "Number2"){
	if (upkey_pressed)
{
	state = states.jumpsquat;
	sprite_index = number2_jumpsquat;
}
	
if (leftkey_down)
{
	state = states.running;
	sprite_index = number2_running;
	image_xscale = -1;
}
	
if (rightkey_down)
{
	state = states.running;
	sprite_index = number2_running;
	image_xscale = 1;
}

if (downkey_down)
{
	state = states.crouch;
}


//if keyboard_check_pressed(ord("F"))
//{
//	charge_timer = 0;
//	smash_released = false;
//	hitbox_created = false;
//	state = states.fsmash;
	
//}
//if keyboard_check_pressed(ord("V"))
//{
//	charge_timer = 0;
//	smash_released = false;
//	hitbox_created = false;
//	state = states.dsmash;
	
//}

//if keyboard_check_pressed(ord("R"))
//{
//	hit_xStrength = .3;
//	hit_yStrength = 2;
//	hit_existence_frames = 1;
//	frames_between_multihits = 5;
//	move_timer = 0;
//	multihits_released = 0;
//	smash_released = false;
//	hitbox_created = false;
//	state = states.nspecial;
//	audio_play_sound(1,1,0);
//}

if (akey_pressed){
	state = states.jab;
	move_timer = 0;
	hitbox_created = false;
	audio_play_sound(2,1,0);
	
}

if(vsp > 0){
	state = states.rising;
	is_grounded = false;	
	}
}//end of if character = number2