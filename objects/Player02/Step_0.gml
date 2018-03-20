/// @description Insert description here
// You can write your code in this editor

upkey_pressed = keyboard_check_pressed(vk_up);
upkey_down = keyboard_check(vk_up);
leftkey_pressed = keyboard_check_pressed(vk_left);
leftkey_down = keyboard_check(vk_left);
rightkey_pressed = keyboard_check_pressed(vk_right);
rightkey_down = keyboard_check(vk_right);
downkey_pressed = keyboard_check_pressed(vk_down);
downkey_down = keyboard_check(vk_down);
akey_pressed = keyboard_check_pressed(vk_add);
akey_down = keyboard_check(vk_add);
bkey_pressed = keyboard_check_pressed(vk_subtract);
bkey_down = keyboard_check(vk_subtract);



	
	
if (character == "Disafter"){



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
	
}//endif disafter




if(character == "Number2"){
	number2_animations();

if (is_interruptable)
{
	if (state == states.rising and vsp > 0)
	{
		state = states.falling;
	}

	if (state == states.idle)
	{
		idle_state();
	}
	
	if (state == states.crouch)
	{
		crouch_state();
	}
	
	if (state == states.jab)
	{
		jab_attack();
	}
	
	if (state == states.fsmash)
	{
	
		fsmash_generic();
	}
		if (state == states.dsmash)
	{
	
		dsmash_generic();
	}
	if (state == states.nspecial)
	{
	
		nspecial_generic();
	}

	if (state == states.running)
	{
		check_turn();
		running_state();
	}

	if (state == states.skid)
	{
		idle_state();
		if (hsp == 0)
			{
				state = states.idle;
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
	if (state == states.running)
	{
		running_movement();
	}
}
else
{
	if ((state == states.rising) or (state == states.falling))
	{
		air_movement();	
	}
	else if (state == states.nair)
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
number2_animations();
}