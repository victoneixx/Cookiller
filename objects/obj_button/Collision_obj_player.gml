if(image_index == 0) image_index = 1;
with(obj_door){
	if(activated == other.activated) instance_destroy();
}