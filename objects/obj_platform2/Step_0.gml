/// @description Insert description here
// You can write your code in this editor
randomize();

if(deleter > 0){

	image_speed = 1;
	sprite_index = destroybrick2;
	deleter --;

	if(deleter <= 0){
		
		brick_y = irandom_range(4,17)
		brick_x = irandom_range(1,6)
		instance_destroy();
		instance_create_layer(brick_x * 90, brick_y * 50, "Instances", obj_platform2);
		
		
	}
}


if(image_index % 2 == 0 || image_index % 5 == 0){
	
	image_speed = 0;
	counter ++

	if(counter > 30){
		image_speed = 1;
		counter = 0
		
	}
}