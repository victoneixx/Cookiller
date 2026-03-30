global.myfont = font_add_sprite_ext(fnt_text, "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "abcdefghijklmnopqrstuvwxyz" + "1234567890" + "!?:;.,-+=*()#%/@<>", 2, 1);
global.dead = false;

global.t_min = 0;
global.t_sec = 0;
global.t_mil = 0;


function gameover(){
	if(global.dead) exit;
	global.dead = true;
	
	hspeed = sign(vel);
	vspeed = -6;
	gravity = 0.3;

}