if (!is_grounded) and (sprite_index != disafter_spawn)
{
	sprite_index = disafter_skid;
	is_grounded = true;
	air_jumps = 1;
	while (place_meeting(round(x), round(y), stage01))
{
	y -= 1;
}
}

