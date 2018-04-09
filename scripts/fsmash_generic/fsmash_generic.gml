if(smash_released == false){
if ((rightc_down or leftc_down or akey_down) and (charge_timer <= 60)){
if(image_index >= 5){image_index=3; }

	
	charge_timer += 1;
	//show_debug_message("charge:" + string(charge_timer));
	
}
else{
	smash_released = true; //locks their commitment to release the smash attack (this is important)
	}
}
else{ //else if smash_release = true;
	if(image_index>3 and image_index<4){image_index=4;}
	
	if(image_index>6){
		if(hitbox_created == false){
			
	hitbox = hitbox_create(50*image_xscale, 50, 16*image_xscale, -16, 8, (charge_timer*.2+5)*image_xscale, (charge_timer*.2), 30); //3rd to last and 2nd to last xknockback and yknockback
	hitbox_created = true;}
	}
	//show_debug_message("image_index:" + string(image_index));
	if(image_index >= image_number-1){
	image_index = 0;
	if(character == "Disafter"){ sprite_index = disafter_idle;}
	state = states.idle;
	smash_released = false;
	
	charge_timer = 0;
	
	
	//show_debug_message("charge timer reset");
	}
}

