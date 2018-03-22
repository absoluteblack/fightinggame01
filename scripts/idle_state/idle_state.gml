if (upkey_pressed)
{
	state = states.jumpsquat;
}
	
if (leftkey_down)
{
	state = states.running;
	image_xscale = -1;
}
	
if (rightkey_down)
{
	state = states.running;
	image_xscale = 1;
}

if (downkey_down)
{
	state = states.crouch;
}

if (r2key_pressed or l2key_pressed) //doing pressed instead of down because will check for down each frame in shield script 
{
	state = states.shield;
}

if (akey_pressed){
	state = states.jab;
	move_timer = 0;
	hitbox_created = false;
	audio_play_sound(2,1,0);
	
}

if(character == "Disafter"){
if (xkey_pressed)
{
	charge_timer = 0;
	smash_released = false;
	hitbox_created = false;
	state = states.fsmash;
	
}
if (bkey_pressed)
{
	charge_timer = 0;
	smash_released = false;
	hitbox_created = false;
	state = states.dsmash;
	
}

if (ykey_pressed)
{
	hit_xStrength = .3;
	hit_yStrength = 2;
	hit_existence_frames = 1;
	frames_between_multihits = 5;
	move_timer = 0;
	multihits_released = 0;
	smash_released = false;
	hitbox_created = false;
	state = states.nspecial;
	audio_play_sound(1,1,0);
}
}//endif Disafter



if(vsp > 0){
	state = states.rising;
	is_grounded = false;	
	}