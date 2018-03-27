move_timer++;

if(move_timer > 40){ //frame the animation ends on
state = states.falling;
}
else if(move_timer > 30){ //frame the animation ends on
	grav = initial_grav;
	vsp = -200/move_timer;
}
else if(move_timer > 20){ //frame the animation ends on
	image_index = 1;
	vsp = -450/move_timer;
	hsp = (move_timer/4)*image_xscale;
}
else{
vsp = 0;
image_index = 0;
}


	