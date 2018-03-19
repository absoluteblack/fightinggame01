if(character == "Disafter"){
move_timer++;

if(image_index >= 3 and !hitbox_created){
	hitbox_created = true;
	hitbox = hitbox_create(32*image_xscale, 32, 16*image_xscale, -16, 8, 3*image_xscale, 5, 20); //the are xknockback and yknockback
	
}
if(image_index >= image_number-1){
	image_index = 0;
	sprite_index = disafter_idle;
}
}//endif disafter




//character specific
if(character == "Number2"){
	
move_timer++;

if(move_timer > 4 && move_timer <= 20){ //fame the move comes out on
if(!hitbox_created){
	hitbox_created = true;
	hitbox = hitbox_create(32*image_xscale, 32, 16*image_xscale, -16, 8, 1*image_xscale, 15, 5); //the are xknockback and yknockback
	
}
}
else if(move_timer > 20){ //frame the animation ends on
	image_index = 0;
	state = states.idle;
}
	
}