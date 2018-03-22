/// @description Insert description here
// You can write your code in this editor
if (!keyboard_controls) //use gamepad controls
{
	p1_presses = detect_gamepad_presses(slot, axislh_value, axislv_value);
	lh_pressed = p1_presses[0];
	lv_pressed = p1_presses[1];
	axislh_value = gamepad_axis_value(slot, gp_axislh);
	axislv_value = gamepad_axis_value(slot, gp_axislv);
	upkey_pressed = gamepad_axis_value(slot, gp_axislv) < -0.5 and lv_pressed == true;
	upkey_down = gamepad_axis_value(slot, gp_axislv) < -0.5;
	leftkey_pressed = gamepad_axis_value(slot, gp_axislh) < -0.5 and lv_pressed == true;
	leftkey_down = gamepad_axis_value(slot, gp_axislh) < -0.5;
	rightkey_pressed = gamepad_axis_value(slot, gp_axislh) > 0.5 and lv_pressed == true;
	rightkey_down = gamepad_axis_value(slot, gp_axislh) > 0.5;
	downkey_pressed = gamepad_axis_value(slot, gp_axislv) > 0.5 and lv_pressed == true;
	downkey_down = gamepad_axis_value(slot, gp_axislv) > 0.5;
	akey_pressed = gamepad_button_check_pressed(slot, gp_face1);if(akey_pressed){show_debug_message("A: gpface1 - P2");}
	akey_down = gamepad_button_check(slot, gp_face1);
	bkey_pressed = gamepad_button_check_pressed(slot, gp_face3);if(bkey_pressed){show_debug_message("B: gpface3 - P2");}
	bkey_down = gamepad_button_check(slot, gp_face3);
	xkey_pressed = gamepad_button_check_pressed(slot, gp_face2);if(xkey_pressed){show_debug_message("X: gpface2 - P2");}
	xkey_down = gamepad_button_check(slot, gp_face2); 
	ykey_pressed = gamepad_button_check_pressed(slot, gp_face4);if(ykey_pressed){show_debug_message("Y: gpface4 - P2");}
	ykey_down = gamepad_button_check(slot, gp_face4);
	
}
else //else use only keyboard controls like a dingus
{
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
xkey_pressed = 0;
xkey_down = 0;
ykey_pressed = 0;
ykey_down = 0;
}


	
	
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