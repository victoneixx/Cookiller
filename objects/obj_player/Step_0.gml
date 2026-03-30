if(keyboard_check_pressed(vk_escape)) game_end();
if(!window_has_focus()) exit;
var _jump = keyboard_check(vk_space);

velh += vel;
velv += gravi;
velh = clamp(velh, -3, 3);
velv = clamp(velv, -8, 8);

if(place_meeting(x+velh, y, all)){
	vel *= -1;
}

if(place_meeting(x + velh, y, all)){
	while!(place_meeting(x + sign(velh), y, all)){
		x += sign(velh);
	}
	velh = 0;
}
x += velh;

if(place_meeting(x, y + velv, all)){
	while!(place_meeting(x, y + sign(velv), all)){
		y += sign(velv);
	}
	velv = 0;
}
y += velv;

if(place_meeting(x, y+1, all) && _jump){
	velv -= 6;
}