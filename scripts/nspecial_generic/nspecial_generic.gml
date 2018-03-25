if(image_index>4 and multihits_released == 0){
	
	eball = eball_create(56*image_xscale,0,1,1);
	hitbox = hitbox_create(32*image_xscale, 32, 40*image_xscale, -12, hit_existence_frames, hit_xStrength*image_xscale, hit_yStrength, 3); //3rd to last and 2nd to last xknockback and yknockback
	multihits_released = 1;
	if(image_index >= image_number-1){
	image_index = 0;
	state = states.idle;
	if(character == "Disafter"){sprite_index = disafter_idle;}
	
	}
}
else if(multihits_released = 1){
	if(move_timer < frames_between_multihits){
		move_timer ++;
	}
	else
	{
		hitbox = hitbox_create(32*image_xscale, 32, 40*image_xscale, -12, hit_existence_frames, hit_xStrength*image_xscale, hit_yStrength, 3); //3rd to last and 2nd to last xknockback and yknockback
		multihits_released = 2;
		move_timer = 0;
	}	
}
else if(multihits_released = 2){
if(move_timer < frames_between_multihits){
		move_timer ++;
	}
	else
	{
		hitbox = hitbox_create(32*image_xscale, 32, 40*image_xscale, -12, hit_existence_frames, hit_xStrength*image_xscale, hit_yStrength, 3); //3rd to last and 2nd to last xknockback and yknockback
		multihits_released = 3;
		move_timer = 0;
	}	
}
else if(multihits_released = 3){
if(move_timer < frames_between_multihits){
		move_timer ++;
	}
	else
	{
		hitbox = hitbox_create(32*image_xscale, 32, 40*image_xscale, -12, hit_existence_frames, hit_xStrength*image_xscale*4, hit_yStrength*2, 3); //3rd to last and 2nd to last xknockback and yknockback
		multihits_released = 4;
		move_timer = 0;
	}	
}
else if(image_index > 10){
	image_index = 0;
	state = states.idle;
	if(character == "Disafter"){sprite_index = disafter_idle;}	
}
