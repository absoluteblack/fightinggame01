apply_friction();

if (r2key_pressed or l2key_pressed) //doing pressed instead of down because will check for down each frame in shield script 
{
	state = states.shield;
}
else if !(downkey_down)
{
	state = states.idle;
}

	