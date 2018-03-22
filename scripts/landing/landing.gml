

	if (!is_grounded) and (state != states.intro)
{
	if(character == "Disafter"){	
		sprite_index = disafter_skid;
		state = states.idle;
		}
	else{state = states.idle;}
	is_grounded = true;
	air_jumps = 1;
	while (place_meeting(round(x), round(y), stage01))
{
	y -= 1;
}
}
	

