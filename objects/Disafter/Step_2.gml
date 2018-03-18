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
							show_debug_message("ignore hit detected");
							break;
						}
					}
					//if it is NOT on the ignore list, hit it, and add it to
					//the ignore list
					if(!ignore){
						other.owner.hit = true;
						other.owner.hitBy = id;
						show_debug_message("first hit detected");
						ds_list_add(ignore,other.owner);
					}
				}
			}
		}
	}
}