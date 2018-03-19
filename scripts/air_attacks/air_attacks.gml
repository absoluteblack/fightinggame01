////All code below this line is also in the Air_Movement script.
////The step code will determine whether the player is attacking or not and use either that script or this script, but not both

if(character == "Disafter"){
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
}//endif disafter
if(character == "Number2"){
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
}