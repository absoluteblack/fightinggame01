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
	landing();
}
y += vsp;