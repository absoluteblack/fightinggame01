move_timer++;
frame_hitbox_comes_out = 12;
frame_move_ends = 30;
if(move_timer > frame_hitbox_comes_out && move_timer <= frame_move_ends){ //frame the move comes out on
if(!hitbox_created){
	hitbox_created = true;
	hitbox = hitbox_create(32*image_xscale, 32, 16*image_xscale, 16, 15, 15*image_xscale, 0, 10); //the are xknockback and yknockback
	
}
}
else if(move_timer > frame_move_ends){ //frame the animation ends on
	image_index = 0;
	state = states.idle;
	//if(character == "Disafter"){sprite_index = disafter_idle;}
}
	
