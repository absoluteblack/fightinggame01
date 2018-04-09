if (is_grounded){
	if (abs(hsp) > ground_friction)
	{
		hsp -= (sign(hsp) * ground_friction);
		if(state = states.skid){
		hsp -= (sign(hsp) * ground_friction);//apply friction again
		hsp -= (sign(hsp) * ground_friction);//apply friction again, triple friction felt good for skid *shrug*
		}
	}
	else
	{
		hsp = 0;
	}
}
else
{
	if (abs(hsp) > air_friction)
	{
		hsp -= (sign(hsp) * air_friction);
	}
	else
	{
		hsp = 0;
	}
}