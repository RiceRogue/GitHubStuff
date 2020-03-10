/// @description Insert description here
// You can write your code in this editor

randomize();


	rand_y = irandom_range(4,17)
	rand_x = irandom_range(1,6)
if(position_meeting(rand_x, rand_y, obj_platform)){

	new_brick = irandom_range(1,4);

		instance_destroy();
	
	 
		if(new_brick = 1){
		instance_create_layer(rand_x * 90, rand_y * 50, "Instances", obj_platform1);

	 } else if(new_brick = 2){
		instance_create_layer(rand_x * 90, rand_y * 50, "Instances", obj_platform2);

	 } else if(new_brick = 3){
		instance_create_layer(rand_x * 90, rand_y * 50, "Instances", obj_platform3);

	 } else if(new_brick = 4){
		instance_create_layer(rand_x * 90, rand_y * 50, "Instances", obj_platform4);

	 }
	
	
}




