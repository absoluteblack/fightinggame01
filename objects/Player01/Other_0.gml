/// @description Insert description here
// You can write your code in this editor
if(x<0 or x>room_width or y>room_height){
x = 500;
y = 180;
hsp = 0;
vsp = 0;
state = states.intro;
is_interruptable = true;
image_xscale = 1;

if(character == "Disafter"){
sprite_index = disafter_spawn;
}
}
else if(y<-100){
y = -100;
	
}