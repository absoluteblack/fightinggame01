if(keyboard_check_pressed(ord("Z"))){
	
	if(global.dev_mode = true)
	{
		global.dev_mode = false;
	}
	else
	{
		global.dev_mode = true;
	}
	
}


if(keyboard_check_pressed(ord("X"))){
	
	if(global.slow_mode = true)
	{
		global.slow_mode = false;
		room_speed = 30;
	}
	else
	{
		global.slow_mode = true;
		room_speed = 60;
	}
	
}
