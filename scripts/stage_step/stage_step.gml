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

if(keyboard_check_pressed(ord("C"))){
	
	if(global.sandbag_on = true)
	{
		global.sandbag_on = false;
	}
	else
	{
		global.sandbag_on = true;
	}
	
}



if(keyboard_check_pressed(ord("P"))){
	
	 
	  if window_get_fullscreen()
      {
      window_set_fullscreen(false);
      }
	  else
      {
      window_set_fullscreen(true);
      }
	
}
