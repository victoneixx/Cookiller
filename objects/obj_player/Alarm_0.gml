if(global.over) exit;
if(global.ckp_x != 0 && global.ckp_y != 0){
	obj_player.x = global.ckp_x;
	obj_player.y = global.ckp_y;
} else {
	x = xstart;
	y = ystart;
}
global.dead = false;
image_angle = 0;
image_speed = 1;
gravity = 0;
vspeed = 0;
hspeed = 0;
velh = vel;
velv = 0;