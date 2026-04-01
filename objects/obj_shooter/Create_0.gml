set_shot_direction = 0;
alarm[0] = set_delay;
switch(set_direction){
	case 0: image_angle = 0; set_shot_direction = 0; break;
	case 1: image_angle = 180; set_shot_direction = 1; break;
	case 2: image_angle = 90; set_shot_direction = 2; break;
	case 3: image_angle = 270; set_shot_direction = 3; break;
}