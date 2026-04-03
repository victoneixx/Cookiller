if(!window_has_focus() || global.start){
	change_timer--;
	if(change_timer < 0){
		change =! change
		change_timer = 30;
	}

	switch(change){
		case true: text_c = c_gray; break;
		case false: text_c = c_white; break;
	}
}