
if (keyboard_check_pressed(ord("W")) and air_jumps > 0)
{
	vsp = -air_jump_velocity;
	air_jumps -= 1;
	sprite_index = disafter_rising;
	//hsp += sign(hsp) * min(2, abs(hsp));
}

if (keyboard_check_pressed(ord("E"))){
	sprite_index = disafter_nair;
	hitbox = hitbox_create(40*image_xscale, 32, 16*image_xscale, -16, 8, 5*image_xscale, 8, 55); //the are xknockback and yknockback
	
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
			hsp += (.75 * air_accel);
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