if(state == states.jumpsquat)
{
	is_grounded = false;
	state = states.rising;
	if (keyboard_check(ord("W")))
	{
		vsp = -jump_velocity;
	}
	else
	{
		vsp = -short_hop_velocity;
	}
}

//if(state = states.rising)
//{
//	sprite_index = disafter_rising;
//}

if (state == states.intro)
{
	state = states.idle;
	is_grounded = false;
	is_interruptable = true;
	grav = max_fall_speed/15;
}

if(state == states.nair)
{
	state = states.falling;
}

if(state == states.jab)
{
	state = states.idle;
	
}