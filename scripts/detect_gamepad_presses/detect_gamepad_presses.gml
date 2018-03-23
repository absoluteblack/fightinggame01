_slot = argument0;
_gp_axislh = argument1;
_gp_axislv = argument2;
axislh = gamepad_axis_value(_slot, gp_axislh);
axislv = gamepad_axis_value(_slot, gp_axislv);
lh_pressed = true;
lv_pressed = true;

if abs(axislh) > deadzone and abs(_gp_axislh) > deadzone and sign(axislh) == sign(_gp_axislh)
{
	lh_pressed = false;
}
if abs(axislv) > deadzone and abs(_gp_axislv) > deadzone and sign(axislv) == sign(_gp_axislv)
{
	lv_pressed = false;
}

return [lh_pressed, lv_pressed];