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
	akey_pressed = gamepad_button_check_pressed(slot, gp_face1);if(akey_pressed){show_debug_message("A: gpface1 - P1");}
	akey_down = gamepad_button_check(slot, gp_face1);
	bkey_pressed = gamepad_button_check_pressed(slot, gp_face3);if(bkey_pressed){show_debug_message("B: gpface3 - P1");}
	bkey_down = gamepad_button_check(slot, gp_face3);
	xkey_pressed = gamepad_button_check_pressed(slot, gp_face2);if(xkey_pressed){show_debug_message("X: gpface2 - P1");}
	xkey_down = gamepad_button_check(slot, gp_face2); 
	ykey_pressed = gamepad_button_check_pressed(slot, gp_face4);if(ykey_pressed){show_debug_message("Y: gpface4 - P1");}
	ykey_down = gamepad_button_check(slot, gp_face4);//gp_shoulderrb
	r1key_pressed = gamepad_button_check_pressed(slot, gp_shoulderr); if(r1key_pressed){show_debug_message("R1: gpface1 - P1");}
	r2key_pressed = gamepad_button_check_pressed(slot, gp_shoulderrb); if(r2key_pressed){show_debug_message("R2: gpface1 - P1");}
	l1key_pressed = gamepad_button_check_pressed(slot, gp_shoulderl); if(l1key_pressed){show_debug_message("L1: gpface1 - P1");}
	l2key_pressed = gamepad_button_check_pressed(slot, gp_shoulderlb); if(l2key_pressed){show_debug_message("L2: gpface1 - P1");}
	r1key_down = gamepad_button_check(slot, gp_shoulderr);
	r2key_down = gamepad_button_check(slot, gp_shoulderrb);
	l1key_down = gamepad_button_check(slot, gp_shoulderl);
	l2key_down = gamepad_button_check(slot, gp_shoulderlb);
	 
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
}
/////////////

if(character == "Number2"){number2_animations();}
else if(character == "Disafter"){disafter_animations();}

if(hitStun > 0){
if(state != states.hitstun){
	justHit = true; 
	show_debug_message("just hit.");
	hitStun_from_hit = hitStun;
	show_debug_message("total hitstun = " + string(hitStun_from_hit));
	}
state = states.hitstun;
hitstun_state();
}
else if (is_interruptable)
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
	if (state == states.shield)
	{
		shielding();
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

if(character == "Number2"){number2_animations();}
else if(character == "Disafter"){disafter_animations();}
