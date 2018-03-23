

	if (!is_grounded) and (state != states.intro)
{
	if(character == "Disafter"){sprite_index = disafter_skid;}
	state = states.skid;
	
	
	if (leftkey_pressed)
{
	state = states.running;
	image_xscale = -1;
}	
else if(rightkey_pressed)
{
	state = states.running;
	image_xscale = 1;
}
else{
	state = states.idle;
}
	
	
	is_grounded = true;
	air_jumps = 1;
	while (place_meeting(round(x), round(y), stage01))
{
	y -= 1;
}
}
	

