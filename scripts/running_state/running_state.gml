if(character == "Disafter"){
if keyboard_check_pressed(ord("W"))
{
	sprite_index = disafter_jumpsquat;
}

if keyboard_check(ord("S"))
{
	sprite_index = disafter_crouch;
}
}//endif disafter

if(character == "Number2"){
	
	
	if (upkey_pressed)
{
	state = states.jumpsquat;
}

if (downkey_down)
{
	state = states.crouch;
}


	
}