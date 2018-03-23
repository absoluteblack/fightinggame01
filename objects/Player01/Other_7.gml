//Table of Contents:
//intro
//jumpsquat
//nair
//jab




if(state == states.jumpsquat)
{
	is_grounded = false;
	state = states.rising;
	air_jumps = 1;
	if (upkey_down or xkey_down or ykey_down)//taking ykey or xkey out of here would allow them to be the designated shorthop key
	{
		vsp = -jump_velocity;
	}
	else
	{
		vsp = -short_hop_velocity;
	}
	if(dash_jump == true){
	hsp = 2*max_run_speed*image_xscale;
	dash_jump = false;
	}
}
if (state == states.intro)
{
	state = states.idle;
	is_grounded = false;
	is_interruptable = true;
	grav = max_fall_speed/15;
}

if((state == states.nair) or (state == states.dair))
{
	state = states.falling;
}

if((state == states.jab) or (state == states.ftilt))
{
	state = states.idle;
	
}