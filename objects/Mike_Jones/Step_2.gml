/// @description Insert description here
// You can write your code in this editor


with(hurtbox){
x = other.x + xOffset;
y = other.y + yOffset;
}

if(hitbox != -1){
	with(hitbox){
		x = other.x + xOffset;
		y = other.y + yOffset;
		
		//collision check
		//checking the collision from the hurtbox object
		with(hurtbox01){
			if(place_meeting(x,y,other) && other.owner != owner){
				//ignore check
				//checking collision from the hitbox object
				with(other){
					//check to see if your target is on the ignore list
					//if it is on the ignore list, dont hit it again
					for(i = 0; 1 < ds_list_size(ignoreList); i ++){
						if(ignoreList[|i] = other.owner){
							ignore = true;
							//show_debug_message("ignore hit detected");
							break;
						}
					}
					//if it is NOT on the ignore list, hit it, and add it to
					//the ignore list
					if(!ignore){
						other.owner.hit = true;
						other.owner.hitBy = id;
						//show_debug_message("first hit detected");
						ds_list_add(ignoreList,other.owner);
					}
				}
			}
		}
	}
}

if(hit){
if (instance_exists(hitBy)){

soundeffect_volume = 0;
soundeffect_volume = (hitBy.owner.image_xscale*hitBy.xHit + hitBy.yHit);
hit_sound = audio_play_sound(0,1,0);
if(soundeffect_volume > 20){soundeffect_volume = 20;}
else if(soundeffect_volume < 5){soundeffect_volume = 5;}
audio_sound_gain(hit_sound, (soundeffect_volume/20), 0);



hsp = hitBy.xHit;
vsp = hitBy.yHit * -1;
hitStun = hitBy.hitstun;
image_xscale = hitBy.owner.image_xscale * -1;
show_debug_message("sandbag xscale: " + string(hitBy.owner.image_xscale));
show_debug_message(hitBy.owner.image_xscale);
hit = false;
//currentState = states.hit
}
}