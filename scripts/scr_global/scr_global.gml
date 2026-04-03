global.myfont = font_add_sprite_ext(fnt_text, "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "abcdefghijklmnopqrstuvwxyz" + "1234567890" + "!?:;.,-+=*()#%/@<>©", 2, 1);
global.dead = false;
global.start = true;
global.over = false;
global.collec = 0;
global.death_counter = 0;


global.t_min = 0;
global.t_sec = 0;
global.t_mil = 0;


function gameover(){
	if(global.dead) exit;
	global.dead = true;
	global.death_counter++;
	var _tremor = instance_create_layer(x, y, layer, obj_tremor);
	hspeed = sign(vel);
	image_speed = 0;
	image_index = 1;
	vspeed = -6;
	gravity = 0.3;
}
