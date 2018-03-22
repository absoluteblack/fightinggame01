/// @description Insert description here
// You can write your code in this editor

if(global.sandbag_on == false){
x = 2000;
y = 2000;
hsp = 0;
vsp = 0;
}
else{
if(keyboard_check_pressed(ord("C"))){
x = 480;
y = 360;
}


hsp = 1*image_xscale;
if(x < room_width *.3 || x > room_width * .7){
	image_xscale *= -1;
	
	x += 5*image_xscale
	
}



if (place_meeting(round(x+hsp), round(y), stage01))
{
	while (!place_meeting(round(x+sign(hsp)), round(y), stage01)) 
	{
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

if (place_meeting(round(x), round(y+vsp), stage01))
{
	while (!place_meeting(round(x), round(y+sign(vsp)), stage01)) 
	{
		y += sign(vsp); 
	}
	vsp = 0;
	// Collision with stage
	
}
y += vsp;






if (is_grounded){
	if (abs(hsp) > ground_friction)
	{
		hsp -= (sign(hsp) * ground_friction);
	}
	else
	{
		hsp = 0;
	}
}
else
{
	if (abs(hsp) > air_friction)
	{
		hsp -= (sign(hsp) * air_friction);
	}
	else
	{
		hsp = 0;
	}
}

vsp += grav;
if (vsp > max_fall_speed)
{
	vsp = max_fall_speed;
}
}