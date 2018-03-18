/// @description Insert description here
// You can write your code in this editor


with(hurtbox){
x = other.x + xOffset;
y = other.y + yOffset;
}


if(hit){
if (instance_exists(hitBy)){	
hsp = hitBy.xHit;
vsp = hitBy.yHit * -1;
hitStun = hitBy.hitstun;
image_xscale = hitBy.owner.image_xscale * -1;
hit = false;
//currentState = states.hit
}
}