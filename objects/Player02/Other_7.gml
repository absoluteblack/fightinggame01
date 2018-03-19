/// @description Insert description here
// You can write your code in this editor

if(character == "Disafter"){


if(sprite_index == disafter_jumpsquat)
{
	is_grounded = false;
	sprite_index = disafter_jump;
	if (keyboard_check(ord("W")))
	{
		vsp = -jump_velocity;
	}
	else
	{
		vsp = -short_hop_velocity;
	}
}

if(sprite_index == disafter_jump)
{
	sprite_index = disafter_rising;
}

if (sprite_index == disafter_spawn)
{
	sprite_index = disafter_falling;
	is_grounded = false;
	is_interruptable = true;
	grav = max_fall_speed/15;
}

if(sprite_index == disafter_nair)
{
	sprite_index = disafter_rising;
}

if(sprite_index == disafter_nair)
{
	sprite_index = disafter_idle;
}	
}//endif disafter





if(character == "Number2"){
if(state == states.jumpsquat)
{
	is_grounded = false;
	state = states.rising;
	if (upkey_down)
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
//if(state == states.jab)
//{
//	state = states.idle;
//}
}

//if(sprite_index = disafter_nair)
//{
//	sprite_index = disafter_idle;
//}