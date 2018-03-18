/// @description Insert description here
// You can write your code in this editor

vsp = 0;
hsp = 0;

jump_velocity = 12;
short_hop_velocity = 8;
air_jump_velocity = 10;
air_jumps = 1;

max_fall_speed = 10;
grav = max_fall_speed/15;

ground_friction = .3;
max_run_speed = 10;
run_accel = max_run_speed/8 + ground_friction;

air_friction = ground_friction * 1.2;
air_max_speed = max_run_speed;
air_accel = run_accel / 2 + air_friction;

is_grounded = false;
is_interruptable = true;