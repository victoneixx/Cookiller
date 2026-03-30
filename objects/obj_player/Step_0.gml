if(keyboard_check_pressed(vk_escape)) game_end();

if(global.dead && alarm[0] < 0) alarm[0] = 60;
if(global.dead) image_angle += 8;

if(!window_has_focus()) exit;

var _jump = keyboard_check(vk_space);

velh += vel;
velv += gravi;
velh = clamp(velh, -3, 3);
velv = clamp(velv, -8, 8);

if(place_meeting(x+velh, y, obj_wall)){
	vel *= -1;
}

if(global.dead) exit;

if(place_meeting(x + velh, y, obj_wall)){
	while!(place_meeting(x + sign(velh), y, obj_wall)){
		x += sign(velh);
	}
	velh = 0;
}
x += velh;

if(place_meeting(x, y + velv, obj_wall)){
	while!(place_meeting(x, y + sign(velv), obj_wall)){
		y += sign(velv);
	}
	velv = 0;
}
y += velv;

if(place_meeting(x, y+1, obj_wall) && _jump){
	velv -= 6;
}