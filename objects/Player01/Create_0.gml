 /// @description Insert description here
// You can write your code in this editor
timre = 0;

/////////////
//Character Strings:
//Disafter
//Number2

character = "Disafter"; //later on, feed which character is selected for player02 here
slot = 0;
keyboard_controls = not gamepad_is_connected(slot);
deadzone = .15;
rl_press_value = .9;
ud_press_value = .6;
justHit = 0;
axislh_value = 0;
axislv_value = 0;
axisrh_value = 0;
axisrv_value = 0;



state = states.idle;

vsp = 0;
hsp = 0;

jump_velocity = 12;
short_hop_velocity = 8;
air_jump_velocity = 11;
air_jumps = 1;
dash_frames = 0; //remaining frames left of dash animation
dash_length = 15; //how many frames their dash lasts
dash_jump = false;
max_fall_speed = 10;
initial_grav = max_fall_speed/15; //declaring what initial grav should be, so we can alter gravity and then know what to set it back to
grav = initial_grav;

ground_friction = .15;
walk_speed = 1;
max_run_speed = 6;
run_accel = max_run_speed/10;
air_accel = run_accel *1;
air_friction = ground_friction * 1.2;
air_max_speed = max_run_speed;


is_grounded = false;
is_interruptable = true;

hurtbox = hurtbox_create(32,60,-16,-16);

hitbox = -1;
eball = -1;

hitBy = -1;
hitStun = 0;
hitStun_from_hit = 0;
hit = false;
