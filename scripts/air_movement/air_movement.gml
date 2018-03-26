if ((xkey_pressed or ykey_pressed) and air_jumps > 0)
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
if(downc_pressed){
		state = states.dair;
		if(character == "Disafter"){
		hitbox = hitbox_create(45*image_xscale, 45, -20*image_xscale, 40, 8, 0*image_xscale, 10, 30); //the are xknockback and yknockback
		audio_play_sound(2,1,0);

		}}
else if ((akey_pressed)){
	if(downkey_down){
		state = states.dair;
		if(character == "Disafter"){
		hitbox = hitbox_create(45*image_xscale, 45, -20*image_xscale, 40, 8, 0*image_xscale, 10, 30); //the are xknockback and yknockback
		audio_play_sound(2,1,0);
	}
	}
else{
	state = states.nair;
	if(character == "Disafter"){
	hitbox = hitbox_create(80*image_xscale, 32, -32*image_xscale, -16, 8, 5*image_xscale, 8, 30); //the are xknockback and yknockback
	audio_play_sound(2,1,0);
	}
	else if(character == "Number2"){
	hitbox = hitbox_create(26*image_xscale, 20, 16*image_xscale, -1, 8, 16*image_xscale, 16, 30); //the are xknockback and yknockback
	audio_play_sound(2,1,0);
	}
}//end of if downkey down
}//end of if akey pressed
else if ((bkey_pressed)){
	if(upkey_down){
		state = states.uspecial;
		if(leftkey_down){ image_xscale = -1;}else if(rightkey_down){ image_xscale = 1;}
		if(character == "Disafter"){
			move_timer = 0;
			temp_grav = 0;
			air_jumps = 0;
			grav = temp_grav;
			vsp = 0;
		//hitbox = hitbox_create(45*image_xscale, 45, -20*image_xscale, 40, 8, 0*image_xscale, 10, 30); //the are xknockback and yknockback
		//audio_play_sound(2,1,0);
	}
}//end of if upkey down
}//end of if bkey pressed

if ((leftkey_down))
{
	if (image_xscale == 1)
	{
		hsp -= (1.0 * air_accel);
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
			hsp += (1.0 * air_accel);
		}
		else
		{
			hsp += (air_accel);
		}
	}
}



//if (abs(hsp) > air_max_speed)
//{
//	hsp = sign(hsp) * air_max_speed;
//}	
if (abs(hsp) > air_max_speed)
{
	hsp += sign(hsp)*-1;
}	
	
	
