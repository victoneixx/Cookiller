//if(window_has_focus()){
//	if (path_speed == 0) {
//       path_speed = abs(set_path_speed);
//    }
//} else{
//	path_speed = 0;
//}
if(global.start) exit;
image_angle += set_path_speed*8;
if (!window_has_focus()) {
    if (!paused_focus) {
        original_direction = sign(path_speed);
        path_speed = 0;
        paused_focus = true;
    }
} else {
    if (paused_focus) {
        path_speed = vel * original_direction;
        paused_focus = false;
    }
}