/// @description Insert description here
// You can write your code in this editor
randomize();

score1 = 0;
score2 = 0;
count = 0;
new_x = 0;
new_x2 = 0;
new_brick = 0;
i = 0;
global.respawn1 = false;
global.respawn2 = false;

delay = 0;
instance_create_layer(room_width/2, room_height - 200, "Extras", cameraman);
instance_create_layer(room_width/2, room_height - 32 , "Instances", obj_ground);



for( i = 0; i < 25; i ++;){
	randomize();
	 brick_x = irandom_range(1, 6)
	 brick_y = irandom_range(4, 17);
	 new_x = random_range(80, room_width/2)
	 new_x2 = random_range(room_width/2, room_width - 80)
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
		

	if(i > 23){
		
		
		instance_create_layer(new_x, 1100, "Instances", obj_p1);
		instance_create_layer(new_x2, 1100, "Instances", obj_p2);
	
	}
}


