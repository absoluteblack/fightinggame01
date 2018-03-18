/// @description Insert description here
// You can write your code in this editor


if(sprite_index = disafter_jumpsquat)
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

if(sprite_index = disafter_jump)
{
	sprite_index = disafter_rising;
}

if (sprite_index = disafter_spawn)
{
	sprite_index = disafter_falling;
	is_grounded = false;
	is_interruptable = true;
	grav = max_fall_speed/15;
}

if(sprite_index = disafter_nair)
{
	sprite_index = disafter_rising;
}

if(sprite_index = disafter_nair)
{
	sprite_index = disafter_idle;
}