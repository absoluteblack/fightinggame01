//if (keyboard_check(ord("F")) and (charge_timer <= 60)){
//if(image_index >= 5){image_index=3; }

	
//	charge_timer += 1;
//	//show_debug_message("charge:" + string(charge_timer));
	
//}
//else{
//	smash_released = true; //locks their commitment to release the smash attack (this is important)
//	}
//}
//else{ //else if smash_release = true;

//show_debug_message("charge timer reset");


if(image_index>4 and multihits_released == 0){
	
	instance_create_depth(x + 52*image_xscale,y,-5,disafter_eball01);
	hitbox = hitbox_create(32, 32, 40*image_xscale, -12, 8, hit_xStrength*image_xscale, hit_yStrength, hit_existence_frames); //3rd to last and 2nd to last xknockback and yknockback
	multihits_released = 1;
	if(image_index >= image_number-1){
	image_index = 0;
	sprite_index = disafter_idle;
	
	}
}
else if(multihits_released = 1){
	if(move_timer < frames_between_multihits){
		move_timer ++;
	}
	else
	{
		hitbox = hitbox_create(32, 32, 40*image_xscale, -12, 8, hit_xStrength*image_xscale, hit_yStrength, hit_existence_frames); //3rd to last and 2nd to last xknockback and yknockback
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
		hitbox = hitbox_create(32, 32, 40*image_xscale, -12, 8, hit_xStrength*image_xscale, hit_yStrength, hit_existence_frames); //3rd to last and 2nd to last xknockback and yknockback
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
		hitbox = hitbox_create(32, 32, 40*image_xscale, -12, 8, hit_xStrength*image_xscale*4, hit_yStrength*2, hit_existence_frames); //3rd to last and 2nd to last xknockback and yknockback
		multihits_released = 4;
		move_timer = 0;
	}	
}
else if(image_index > 10){
	image_index = 0;
	sprite_index = disafter_idle;	
}

