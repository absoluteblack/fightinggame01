


hitStun -= 1;
show_debug_message("p1 remaining hitstun: " + string(hitStun));

if(hitStun <= 0){
state = states.idle;	
}