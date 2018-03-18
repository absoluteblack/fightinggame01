move_timer++;


if(image_index >= 3 and !hitbox_created){
	hitbox_created = true;
	hitbox = hitbox_create(32*image_xscale, 32, 16*image_xscale, -16, 8, 3*image_xscale, 5, 20); //the are xknockback and yknockback
	
}
if(image_index >= image_number-1){
	image_index = 0;
	sprite_index = disafter_idle;
}

