	if (xkey_pressed or ykey_pressed) //upkey_pressed or 
{
	state = states.jumpsquat;
}

if (downkey_down)
{
	state = states.crouch;
}

idle_n_crouch_attacks();


	
