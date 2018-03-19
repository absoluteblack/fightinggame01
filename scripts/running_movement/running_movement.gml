if(character == "Disafter"){
if (keyboard_check(ord("A")) and image_xscale == -1)
{
	hsp -= (run_accel);
}
else
{
	if (keyboard_check(ord("D")) and image_xscale == 1)
	{
		hsp += (run_accel);
	}
	else
	{
		sprite_index = disafter_skid;
	}
}

if (abs(hsp) > max_run_speed)
{
	hsp = image_xscale * max_run_speed;
}
}//endif disafter






//character specific code
if(character == "Number2"){
	
if ((leftkey_down) and image_xscale == -1)
{
	hsp -= (run_accel);
}
else
{
	if ((rightkey_down) and image_xscale == 1)
	{
		hsp += (run_accel);
	}
	else
	{
		state = states.skid;
	}
}

if (abs(hsp) > max_run_speed)
{
	hsp = image_xscale * max_run_speed;
}	
	
}