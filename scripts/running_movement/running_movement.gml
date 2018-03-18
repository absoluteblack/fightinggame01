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