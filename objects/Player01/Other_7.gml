//Table of Contents:
//intro
//jumpsquat
//nair
//jab




if(state == states.jumpsquat)
{
	//show_debug_message("Jumpsquat Ended");
	is_grounded = false;
	state = states.rising;
	y -= 3;
	air_jumps = 1;
	if(dash_jump == true){
	vsp = -(short_hop_velocity+jump_velocity)/2;
	hsp = 1.4*max_run_speed*image_xscale;
	x += 5*image_xscale
	dash_jump = false;
	//1.4*max_run_speed
	//show_debug_message("dashjump code triggered");
	}
	else if (upkey_down or xkey_down or ykey_down)//taking ykey or xkey out of here would allow them to be the designated shorthop key
	{
		vsp = -jump_velocity;
	}
	else
	{
		vsp = -short_hop_velocity;
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

if((state == states.jab) or (state == states.ftilt) or (state == states.utilt))
{
	state = states.idle;
	
}
