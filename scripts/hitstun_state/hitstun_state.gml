
if(justHit){
	image_index=0;
}
else if(hitStun == (hitStun_from_hit - 1)){
	image_index=1;
}
else{
	image_index=2;
}
justHit = false;
		
	
	
hitStun -= 1;
show_debug_message("p1 remaining hitstun: " + string(hitStun));


if(hitStun <= 0){ 
	if(vsp > 0){
	state = states.falling;
	is_grounded = false;
	}
	else if(vsp < 0){
	state = states.rising; //sorry connor :(		
	is_grounded = false;
	}
	else{
	state = states.idle;
	is_grounded = true;
	}
	}




//if(hitStun <= 0){
	
//	if (place_meeting(round(x), round(y+1), stage01))
//	{
	
//		 state = states.idle;
//		 landing();
//	}
//	else{
//	state = states.falling;
//	}

	
	
//	}

