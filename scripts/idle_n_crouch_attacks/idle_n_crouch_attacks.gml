if(character == "Disafter"){ //here for when new characters do not have all their moves implemented yet
if (akey_pressed)
{
	//if(leftkey_pressed){
	//image_xscale = -1;
	//charge_timer = 0;
	//smash_released = false;
	//hitbox_created = false;
	//state = states.fsmash;
	//}
	//else if(rightkey_pressed){
	//image_xscale = 1;
	//charge_timer = 0;
	//smash_released = false;
	//hitbox_created = false;
	//state = states.fsmash;
	//}
	//else if(downkey_pressed){
	//charge_timer = 0;
	//smash_released = false;
	//hitbox_created = false;
	//state = states.dsmash;
	//}
	//else
	//if(rightkey_down){
	//	move_timer = 0;
	//	hitbox_created = false;
	//	state = states.ftilt;
	//	image_xscale = 1;
	//	audio_play_sound(2,1,0);
	//}
	//else if(leftkey_down){
	//	move_timer = 0;
	//	hitbox_created = false;
	//	state = states.ftilt;
	//	image_xscale = -1;
	//	audio_play_sound(2,1,0);
	//}
	if(upkey_down){
	state = states.utilt;
	move_timer = 0;
	hitbox_created = false;
	audio_play_sound(2,1,0);
	}
	else{
	state = states.jab;
	move_timer = 0;
	hitbox_created = false;
	audio_play_sound(2,1,0);
	}
}


if (bkey_pressed)
{
	hit_xStrength = .3;
	hit_yStrength = 2;
	hit_existence_frames = 3;
	frames_between_multihits = 5;
	move_timer = 0;
	multihits_released = 0;
	smash_released = false;
	hitbox_created = false;
	state = states.nspecial;
	audio_play_sound(1,1,0);
}
	if(leftc_pressed){
	image_xscale = -1;
	charge_timer = 0;
	smash_released = false;
	hitbox_created = false;
	state = states.fsmash;
	}
	else if(rightc_pressed){
	image_xscale = 1;
	charge_timer = 0;
	smash_released = false;
	hitbox_created = false;
	state = states.fsmash;
	}
	else if(downc_pressed){
	charge_timer = 0;
	smash_released = false;
	hitbox_created = false;
	state = states.dsmash;
	}
}