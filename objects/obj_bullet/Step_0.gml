if(place_meeting(x, y, obj_collision)) instance_destroy();

switch(window_has_focus() || global.start){
	case true: speed_shot = 2; break;
	case false: speed_shot = 0; break;
}

speed = speed_shot;