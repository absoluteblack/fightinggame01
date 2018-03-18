/// @description Insert description here
// You can write your code in this editor


with(hurtbox){
x = other.x + xOffset;
y = other.y + yOffset;
}


if(hit){
show_debug_message(hsp);
hsp += hitBy.xHit;
show_debug_message(hitBy.xHit);
show_debug_message(hsp);
vsp -= hitBy.yHit;
hitStun = hitBy.hitstun;
image_xscale = hitBy.owner.image_xscale * -1;
hit = false;
//currentState = states.hit

}