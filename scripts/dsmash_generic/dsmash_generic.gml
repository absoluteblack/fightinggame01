if(smash_released == false){
if (keyboard_check(ord("V")) and (charge_timer <= 60)){
if(image_index >= 4){image_index=2; }

	
	charge_timer += 1;
	//show_debug_message("charge:" + string(charge_timer));
	
}
else{
	smash_released = true; //locks their commitment to release the smash attack (this is important)
	image_speed = 2;
	}
}
else{ //else if smash_release = true;
	if(image_index>2 and image_index<3){image_index=3;}
	
	if(image_index>5){
		if(hitbox_created == false){
	hitbox = hitbox_create(32*image_xscale, 16, -16*image_xscale, 32, 8, (charge_timer*.2)*image_xscale, (charge_timer*.4), 15); //3rd to last and 2nd to last xknockback and yknockback
	hitbox_created = true;
	image_speed = 1;}
	}
	//show_debug_message("image_index:" + string(image_index));
	if(image_index >= image_number-1){
	image_index = 0;
	sprite_index = disafter_idle;
	smash_released = false;
	
	charge_timer = 0;
	
	
	//show_debug_message("charge timer reset");
	}
}

