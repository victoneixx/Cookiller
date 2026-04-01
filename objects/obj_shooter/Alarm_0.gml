if(!window_has_focus()) exit;
var _bullet = instance_create_layer(x, y, layer, obj_bullet);
_bullet.direction = 90*set_shot_direction;
_bullet.speed = 2
_bullet.x += lengthdir_x(12, image_angle);
_bullet.y += lengthdir_y(12, image_angle);
alarm[0] = set_delay;
