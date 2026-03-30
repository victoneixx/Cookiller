//var _right = keyboard_check(ord("D"));
//var _left = keyboard_check(ord("A"));
var _jump = keyboard_check(vk_space);

velh += vel;
velv += gravi;
velh = clamp(velh, -3, 3);
velv = clamp(velv, -12, 12);

if(place_meeting(x + velh, y, all)){
	while!(place_meeting(x + sign(velh), y, all)){
		x += sign(velh);
	}
	velh = 0;
	place = true;
}
x += velh;

if(place){
	vel *= -1;
	place = false;
}

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