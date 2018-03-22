
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

if(hitStun <= 0){ state = states.idle;}



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

