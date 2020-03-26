/// @description Insert description here
// You can write your code in this editor
randomize();

if(keyboard_check_pressed(ord("R"))){
	room_restart();
	
	}
	
	var  new_x = random_range(0, room_width - 80)
	
		if(global.respawn1 = true){
			count++
			if(count > 30){
	
	instance_create_layer(new_x, 1100 , "Instances", obj_p1);
	count = 0;
	global.respawn1 = false;
	}
	
}
		if(global.respawn2 = true){
			count++
			if(count > 30){
	
	instance_create_layer(new_x, 1100 , "Instances", obj_p2);
	count = 0;
	global.respawn2 = false;
	}
}

if(keyboard_check(vk_space)){
	
	
	obj_p1.ySpeed = 0;
	obj_p2.ySpeed = 0;
}


		//part_emitter_region(parts, emitter, obj_p1.x - 20, obj_p2.x + 20, ps_shape_ellipse, ps_distr_gaussian);
		//part_emitter_stream(parts, emitter, trail, 5);