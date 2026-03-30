if(!window_has_focus()) exit;

change_timer--;
if(change_timer < 0){
	change =! change
	change_timer = 30;
}

switch(change){
	case true: text_c = #D3D3D3; break;
	case false: text_c = c_white; break;
}

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
	show_message("FIM DE JOGO");
}