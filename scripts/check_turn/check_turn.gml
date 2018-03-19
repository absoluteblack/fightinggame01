if(character == "Disafter"){
if keyboard_check(ord("A"))
{
	image_xscale = -1;
}
	
if keyboard_check(ord("D"))
{
	image_xscale = 1;
}
}//endif disafter




if(character == "Number2"){
if (leftkey_down)
{
	image_xscale = -1;
}
	
if (rightkey_down)
{
	image_xscale = 1;
}
}