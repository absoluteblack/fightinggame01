//this is all garbage i th



if(smash_released == false){
if (keyboard_check(ord("F")) and (charge_timer <= 60)){
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
	hitbox = hitbox_create(50*image_xscale, 50, 16*image_xscale, -16, 8, (charge_timer*.1+3)*image_xscale, (charge_timer*.2)+5, 55); //3rd to last and 2nd to last xknockback and yknockback
	hitbox_created = true;}
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





//if(charge_timer == 36){
//image_index=5;
//image_speed=0;
//}

//if(charge_timer <= 36){

//}
//else{ 
//if(charge_timer == 96){ //first check if smash attach reached max 1 second/ 60 frames of charging
//	//release smash attack
//	image_index=6;
//	image_speed=1;
//	show_debug_message("full charge:" + string(charge_timer));
//	//use charge timer to scale move damage/knockback
//	//set charge timer to zero
//	charge_timer = 0;
//	show_debug_message("charge timer reset");
//	sprite_index = disafter_idle;
//}
//else if (keyboard_check(ord("F"))){ //if smash attack is not fully charged check if keyboard is down and if so continue charging
	
//	image_index=5;
//	image_speed=0;
		
//}
//else{ //if smash attack is not fully charged, but keyboard is not down, release smash attack with partial charge
//	//release smash attack
//	image_index=6;
//	image_speed=1;
//	show_debug_message("partial charge:" + string(charge_timer));
//	//use charge timer to scale move damage/knockback
	
//	//set charge timer to zero
//	charge_timer = 0;
//	sprite_index = disafter_idle;
//	show_debug_message("charge timer reset");
//}
//}
	//if(image_index == 6){ image_speed=1;
	//	show_debug_message("partial charge:" + string(charge_timer));
	//	charge_timer = 0;
	//	sprite_index = disafter_idle;}
		
	//if(charge_timer == 60){ image_speed=1;
	//	show_debug_message("full charge:" + string(charge_timer));
	//	charge_timer = 0;
	//	sprite_index = disafter_idle;}

//if(image_index == (image_number-1)){
//show_debug_message("image_index = image number" + string(image_index) + string(image_number));	
//charge_timer = 0;
//sprite_index = disafter_idle;
//}

