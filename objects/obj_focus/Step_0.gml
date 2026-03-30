if(!window_has_focus()){
	change_timer--;
	if(change_timer < 0){
		change =! change
		change_timer = 30;
	}

	switch(change){
		case true: text_c = #D3D3D3; break;
		case false: text_c = c_white; break;
	}
}