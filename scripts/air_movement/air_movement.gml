if ((upkey_pressed) and air_jumps > 0)
{
	vsp = -air_jump_velocity;
	air_jumps -= 1;
	state = states.rising;
	//hsp += sign(hsp) * min(2, abs(hsp));
	
	//show_debug_message("bbox_top: " + string(bbox_top));
	//show_debug_message("bbox_bot: " + string(bbox_bottom));
	//show_debug_message("bbox_left: " + string(bbox_left));
	//show_debug_message("bbox_right: " + string(bbox_right));
}

if ((akey_pressed)){
	state = states.nair
	
	if(character == "Disafter"){
	hitbox = hitbox_create(80*image_xscale, 32, -32*image_xscale, -16, 8, 5*image_xscale, 8, 55); //the are xknockback and yknockback
	audio_play_sound(2,1,0);
	}
	else if(character == "Number2"){
	hitbox = hitbox_create(26*image_xscale, 20, 16*image_xscale, -1, 8, 16*image_xscale, 16, 55); //the are xknockback and yknockback
	audio_play_sound(2,1,0);
	}

	
}


if ((leftkey_down))
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
	if ((rightkey_down))
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
	
	
	
