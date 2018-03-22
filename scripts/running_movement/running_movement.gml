
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
	