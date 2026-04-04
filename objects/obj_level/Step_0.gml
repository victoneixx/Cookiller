if(global.over && keyboard_check_pressed(vk_space)){
	room_goto(rm_level01);
	global.over = false;
	global.start = true;
	global.t_min = 10;
	global.t_sec = 0;
	global.t_mil = 0;
}

if(global.start && !global.over && keyboard_check_released(vk_enter)){
	global.start = false;
}


if(!window_has_focus() || global.start || global.over) exit;

global.t_mil--;

if(global.t_mil = -1){
	global.t_sec--;
	global.t_mil = 59;
}

if(global.t_sec = -1){
	global.t_sec = 59;
	global.t_min--;
}

if(global.t_min = 0 && global.t_sec = 0 && global.t_mil <= 0){
	global.over = true;
}