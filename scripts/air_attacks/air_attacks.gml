//this code should match the air_movement code, except with any 
//relevant differences on movement if you are in the middle of an aerial
	
	if (leftkey_down)
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
	if (rightkey_down)
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
