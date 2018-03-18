/// @description Insert description here
// You can write your code in this editor


with(hurtbox){
x = other.x + xOffset;
y = other.y + yOffset;
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
hit = false;
//currentState = states.hit
}
}