if(!window_has_focus()) exit;

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