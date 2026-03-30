global.dead = false;


function gameover(){
	if(global.dead) exit;
	global.dead = true;
	
	hspeed = sign(vel);
	vspeed = -6;
	gravity = 0.3;

}