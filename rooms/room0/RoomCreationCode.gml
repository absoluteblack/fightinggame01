
var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;)
   {
    if(gamepad_is_connected(i))
		{
			global.gp[i] = true;
			gamepad_get_description(i);
			
	    }
	else
		{
			global.gp[i] = false;
		}
		show_debug_message("Slot " + string(i) + " Connected = " + string(global.gp[i]))
   
   }