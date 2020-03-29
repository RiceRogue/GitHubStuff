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


if(instance_number(obj_platform) < 25){
	
	bricktime ++;
	
	if(bricktime > 60){
	for( i = instance_number(obj_platform); i < 25; i ++;){
	randomize();
	 brick_x = irandom_range(1, 6)
	 brick_y = irandom_range(4, 17);
	
	 new_brick = irandom_range(1,4);

	 
		if(new_brick = 1){
		instance_create_layer(brick_x * 90, brick_y * 50, "Instances", obj_platform1);

	 } else if(new_brick = 2){
		instance_create_layer(brick_x * 90, brick_y * 50, "Instances", obj_platform2);

	 } else if(new_brick = 3){
		instance_create_layer(brick_x * 90, brick_y * 50, "Instances", obj_platform3);

	 } else if(new_brick = 4){
		instance_create_layer(brick_x * 90, brick_y * 50, "Instances", obj_platform4);

	 }
	
		}
		bricktime = 0;
	}
}

//var numexplosionsinroom = instance_number(obj_explosion);
//for (i=0; i<numexplosionsinroom; i++){
//	var thisexplosion = instance_find(obj_explosion, i);
//	if (thisexplosion.floating == true){
//		thisexplosion.y -= 1;
//	}
//}
// hanging explosions
//tidy it up polish


		//part_emitter_region(parts, emitter, obj_p1.x - 20, obj_p2.x + 20, ps_shape_ellipse, ps_distr_gaussian);
		//part_emitter_stream(parts, emitter, trail, 5);