if (upkey_pressed or xkey_pressed or ykey_pressed)
{
	state = states.jumpsquat;
}
	
if (leftkey_pressed)
{
	//state = states.running;
	state = states.dash;
	dash_frames = dash_length;
	image_xscale = -1;
}
else if (rightkey_pressed)
{
	//state = states.running;
	state = states.dash;
	dash_frames = dash_length;
	image_xscale = 1;
}
else if (leftkey_down)
{
	if(axislh_value > -((rl_press_value + deadzone)/2)){
	state = states.walk;
	}
	else{
	state = states.running;
	}
	image_xscale = -1;
}
else if (rightkey_down)
{
	if(axislh_value < ((rl_press_value + deadzone)/2)){
		state = states.walk;
	}
	else{
	state = states.running;
	}
	image_xscale = 1;
}

if (downkey_down)
{
	state = states.crouch;
}

if (r2key_down or l2key_down) //doing pressed instead of down because will check for down each frame in shield script 
{
	state = states.shield;
}



idle_n_crouch_attacks();



if(vsp > 0){
	state = states.rising;
	is_grounded = false;	
	}