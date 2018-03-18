/// @description Insert description here
// You can write your code in this editor






if (is_interruptable)
{
	if (sprite_index == disafter_rising and vsp > 0)
	{
		sprite_index = disafter_falling;
	}

	if (sprite_index == disafter_idle)
	{
		idle_state();
	}
	
	if (sprite_index == disafter_crouch)
	{
		crouch_state();
	}
	
	if (sprite_index == disafter_jab)
	{
		jab_attack();
	}
	
	if (sprite_index == disafter_fsmash)
	{
	
		fsmash_generic();
	}
		if (sprite_index == disafter_dsmash)
	{
	
		dsmash_generic();
	}
	if (sprite_index == disafter_nspecial)
	{
	
		nspecial_generic();
	}

	if (sprite_index == disafter_running)
	{
		check_turn();
		running_state();
	}

	if (sprite_index == disafter_skid)
	{
		idle_state();
		if (hsp == 0)
			{
				sprite_index = disafter_idle;
			}
		else
		{
			apply_friction();
		}
	}
}

// Physics calc
apply_friction();

if (is_grounded)
{
	if (sprite_index == disafter_running)
	{
		running_movement();
	}
}
else
{
	if ((sprite_index == disafter_rising) or (sprite_index == disafter_falling) or (sprite_index == disafter_jump))
	{
		air_movement();	
	}
	else if (sprite_index == disafter_nair)
	{
		air_attacks();	
	}
}

vsp += grav;
if (vsp > max_fall_speed)
{
	vsp = max_fall_speed;
}


collide_and_move();