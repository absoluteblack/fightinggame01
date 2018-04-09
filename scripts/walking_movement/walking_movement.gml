if (abs(hsp) < max_run_speed/8){
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
}



if ((leftkey_down) and image_xscale == -1)
{
	
	if(axislh_value > -((rl_press_value + deadzone)/2)){
		hsp = -walk_speed;
		state = states.walk;
	}
	else{
	hsp -= (run_accel);
	state = states.running;
	
	}
	
	//hsp = run_accel * (axislh_value + deadzone)/(rl_press_value - deadzone) - min_walk_speed;
	//if(hsp > -min_walk_speed){
	//	hsp = -min_walk_speed;	
	//	}
	
}
else
{
	if ((rightkey_down) and image_xscale == 1)
	{
		if(axislh_value < ((rl_press_value + deadzone)/2)){
		hsp = walk_speed;
		state = states.walk;
		}
		else{
		hsp += (run_accel);
		state = states.running;
		}
	}
		//hsp += run_accel * (axislh_value - deadzone)/(rl_press_value - deadzone) + min_walk_speed;
		//hsp = run_accel * axislh_value;
		//if(hsp < min_walk_speed){
		//hsp = min_walk_speed;	
		//}
	else
	{
		state = states.skid;
	}
}

if (abs(hsp) > max_run_speed)
{
	hsp = image_xscale * max_run_speed;
}	
	