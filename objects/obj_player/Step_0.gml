if(keyboard_check_pressed(vk_escape)) game_end();

if(global.over) exit;

if(global.dead && alarm[0] < 0) alarm[0] = 60;
if(global.dead) image_angle += 8;

if(global.start) exit;
if(!window_has_focus()) exit;

var _jump = keyboard_check(vk_space);

velh += vel;
velv += gravi;
velh = clamp(velh, -3, 3);
velv = clamp(velv, -8, 8);
if(velh != 0) image_xscale = sign(velh);

if(place_meeting(x+velh, y, obj_collision)){
	vel *= -1;
}

if(global.dead) exit;

if(place_meeting(x + velh, y, obj_collision)){
	while!(place_meeting(x + sign(velh), y, obj_collision)){
		x += sign(velh);
	}
	velh = 0;
}
x += velh;

if(place_meeting(x, y + velv, obj_collision)){
	while!(place_meeting(x, y + sign(velv), obj_collision)){
		y += sign(velv);
	}
	velv = 0;
}
y += velv;

if(place_meeting(x, y+1, obj_collision) && _jump){
	velv -= 6;
}