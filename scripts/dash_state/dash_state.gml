if(image_xscale == 1 && leftkey_pressed){
	dash_frames = dash_length;
	image_xscale = -1;
}
else if(image_xscale == -1 && rightkey_pressed){
	dash_frames = dash_length;
	image_xscale = 1;
}
else if(upkey_pressed){
	dash_frames = 0;
	state = states.jumpsquat;
	dash_jump = true; //this passes into the Animation End code for jumpsquat, for an extra burst of speed
}

if(dash_frames >= dash_length){
	image_index = 0;
}
	else{
	image_index = 1;	
}
hsp = (1.4*max_run_speed) * image_xscale;




dash_frames--;
if(dash_frames <= 0){
state = states.running;	
hsp	 = image_xscale*(max_run_speed/2);
}