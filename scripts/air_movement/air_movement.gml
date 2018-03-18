
if (keyboard_check_pressed(ord("W")) and air_jumps > 0)
{
	vsp = -air_jump_velocity;
	air_jumps -= 1;
	hsp += sign(hsp) * min(4, abs(hsp));
}

if (keyboard_check(ord("A")))
{
	if (image_xscale == 1)
	{
		hsp -= (.5 * air_accel);
	}
	else
	{
		hsp -= (air_accel);
	}
	
}
else
{
	if (keyboard_check(ord("D")))
	{
		if (image_xscale == -1)
		{
			hsp += (.5 * air_accel);
		}
		else
		{
			hsp += (air_accel);
		}
	}
}



if (abs(hsp) > air_max_speed)
{
	hsp = sign(hsp) * air_max_speed;
}