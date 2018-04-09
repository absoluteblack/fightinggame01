_slot = argument0;
_gp_axislh = argument1;
_gp_axislv = argument2;
_gp_axisrh = argument3;
_gp_axisrv = argument4;
axislh = gamepad_axis_value(_slot, gp_axislh);
axislv = gamepad_axis_value(_slot, gp_axislv);
_lh_pressed = true;
_lv_pressed = true;
axisrh = gamepad_axis_value(_slot, gp_axisrh);
axisrv = gamepad_axis_value(_slot, gp_axisrv);
_rh_pressed = true;
_rv_pressed = true;


if abs(axislh) > deadzone and abs(_gp_axislh) > deadzone and sign(axislh) == sign(_gp_axislh)
{
	lh_pressed = false;
}
if abs(axislv) > deadzone and abs(_gp_axislv) > deadzone and sign(axislv) == sign(_gp_axislv)
{
	lv_pressed = false;
}

if abs(axisrh) > deadzone and abs(_gp_axisrh) > deadzone and sign(axisrh) == sign(_gp_axisrh)
{
	rh_pressed = false;
}
if abs(axisrv) > deadzone and abs(_gp_axisrv) > deadzone and sign(axisrv) == sign(_gp_axisrv)
{
	rv_pressed = false;
}


return [_lh_pressed, _lv_pressed, _rh_pressed, _rv_pressed];