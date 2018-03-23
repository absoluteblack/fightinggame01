if (upkey_pressed or xkey_pressed or ykey_pressed)
{
	state = states.jumpsquat;
}
	
if (leftkey_pressed)
{
	//state = states.running;
	state = states.dash;
	dash_frames = dash_length;
	image_xscale = -1;
}
else if (rightkey_pressed)
{
	//state = states.running;
	state = states.dash;
	dash_frames = dash_length;
	image_xscale = 1;
}
else if (leftkey_down)
{
	state = states.running;
	image_xscale = -1;
}
else if (rightkey_down)
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



if(character == "Disafter"){ //here for when new characters do not have all their moves implemented yet
if (akey_pressed)
{
	if(leftkey_pressed){
	image_xscale = -1;
	charge_timer = 0;
	smash_released = false;
	hitbox_created = false;
	state = states.fsmash;
	}
	else if(rightkey_pressed){
	image_xscale = 1;
	charge_timer = 0;
	smash_released = false;
	hitbox_created = false;
	state = states.fsmash;
	}
	else if(downkey_pressed){
	charge_timer = 0;
	smash_released = false;
	hitbox_created = false;
	state = states.dsmash;
	}
	else if(rightkey_down){
		move_timer = 0;
		hitbox_created = false;
		state = states.ftilt;
		image_xscale = 1;
		audio_play_sound(2,1,0);
	}
	else if(leftkey_down){
		move_timer = 0;
		hitbox_created = false;
		state = states.ftilt;
		image_xscale = -1;
		audio_play_sound(2,1,0);
	}
	else{
	state = states.jab;
	move_timer = 0;
	hitbox_created = false;
	audio_play_sound(2,1,0);
	}
}


if (bkey_pressed)
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