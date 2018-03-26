/// @description Insert description here
// You can write your code in this editor

//deadzone and press_values set in create
if (!keyboard_controls) //use gamepad controls
{
	
	p1_presses = detect_gamepad_presses(slot, axislh_value, axislv_value, axisrh_value, axisrv_value);
	lh_pressed = p1_presses[0];
	lv_pressed = p1_presses[1];
	rh_pressed = p1_presses[2];
	rv_pressed = p1_presses[3];
	axislh_value = gamepad_axis_value(slot, gp_axislh);
	axislv_value = gamepad_axis_value(slot, gp_axislv);
	upkey_pressed = (gamepad_axis_value(slot, gp_axislv) < -ud_press_value) and lv_pressed == true;
	upkey_down = gamepad_axis_value(slot, gp_axislv) < -deadzone;
	leftkey_pressed = (gamepad_axis_value(slot, gp_axislh) < -rl_press_value) and lh_pressed == true;
	leftkey_down = gamepad_axis_value(slot, gp_axislh) < -deadzone;
	rightkey_pressed = (gamepad_axis_value(slot, gp_axislh) > rl_press_value) and lh_pressed == true;
	rightkey_down = gamepad_axis_value(slot, gp_axislh) > deadzone;
	downkey_pressed = (gamepad_axis_value(slot, gp_axislv) > ud_press_value) and lv_pressed == true;
	downkey_down = gamepad_axis_value(slot, gp_axislv) > deadzone;
	///////CSTICK-TEST
	upc_pressed = (gamepad_axis_value(slot, gp_axisrv) < -ud_press_value) and rv_pressed == true;
	upc_down = gamepad_axis_value(slot, gp_axisrv) < -deadzone;
	leftc_pressed = (gamepad_axis_value(slot, gp_axisrh) < -rl_press_value) and rh_pressed == true;
	leftc_down = gamepad_axis_value(slot, gp_axisrh) < -deadzone;
	rightc_pressed = (gamepad_axis_value(slot, gp_axisrh) > rl_press_value) and rh_pressed == true;
	rightc_down = gamepad_axis_value(slot, gp_axisrh) > deadzone;
	downc_pressed = (gamepad_axis_value(slot, gp_axisrv) > ud_press_value)and rv_pressed == true;
	downc_down = gamepad_axis_value(slot, gp_axisrv) > deadzone;
	////////
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
	xkey_pressed = 0; // set these all to 0 for now because game crashes on startup if you havent set these yet and reference them in the code.
	xkey_down = 0;
	ykey_pressed = 0;
	ykey_down = 0;
	r1key_pressed = 0;
	r2key_pressed = 0;
	l1key_pressed = 0;
	l2key_pressed = 0;
	r1key_down = 0;
	r2key_down = 0;
	l1key_down = 0;
	l2key_down = 0;
}
/////////////

check_character_animations();


if(hitStun >= 1){
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
	else if (state == states.idle)
	{
		idle_state();
	}
	else if (state == states.dash)
	{
		dash_state();
	}
	else if (state == states.crouch)
	{
		crouch_state();
	}
	else if (state == states.shield)
	{
		shielding();
	}
	else if (state == states.jab)
	{
		jab_attack();
	}
	else if (state == states.ftilt)
	{
		ftilt_attack();
	}
	else if (state == states.fsmash)
	{
	
		fsmash_generic();
	}
    else if (state == states.dsmash)
	{
		dsmash_generic();
	}
	else if (state == states.nspecial)
	{
		nspecial_generic();
	}
	else if (state == states.uspecial)
	{
		uspecial_generic();
	}
	else if (state == states.running)
	{
		check_turn();
		running_state();
	}
	else if (state == states.walk)
	{
		check_turn();
		walking_state();
	}
	else if (state == states.skid)
	{
		//add code to prevent ability to run in other direction while state = skid
		if (hsp == 0)
			{
				state = states.idle;
			}
		else if((sign(image_xscale) == sign(axislh_value)) || axislh_value == 0){
		idle_state();
		apply_friction();
		}//end if way your facing equals way your pressing
		else
		{
		//else you still skid
		if(abs(hsp) < 1){
			idle_state();
			apply_friction();
		}
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
	else if (state == states.walk)
	{
		walking_movement();
	}
}
else
{
	if ((state == states.rising) or (state == states.falling))
	{
		air_movement();	
	}
	else if ((state == states.nair) or (state == states.dair))
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

check_character_animations();
