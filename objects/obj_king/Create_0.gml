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

bricktime = 0;
global.respawn1 = false;
global.respawn2 = false;


bombedp1 = false;
bombedp2 = false;

fizzp1 = false;
fizzp2 = false;



delay = 0;
instance_create_layer(0, room_height - 200, "Extras", cameraman);
instance_create_layer(room_width/2, room_height - 32 , "Instances", obj_ground);



for( i = 0; i < 20; i ++;){
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
		

	if(i > 18){
		
		
		instance_create_layer(new_x, 1050, "Instances", obj_p1);
		instance_create_layer(new_x2, 1050, "Instances", obj_p2);
	
	}
}


audio_play_sound(song, 0, true)





//particles


parts = part_system_create();


trail = part_type_create();
//trail.depth = -10000;
part_type_shape(trail, pt_shape_pixel);

part_type_size(trail, 3,7, 0, 0);
part_type_speed(trail,0, 0, 0, 1);
part_type_color3(trail, c_black,c_red, c_fuchsia)
part_type_life(trail, 10, 30);

part_type_orientation(trail, -180, 180, 0, 0, 1);





trail2 = part_type_create();
//trail2.depth = -10000
part_type_shape(trail2, pt_shape_pixel);

part_type_size(trail2, 3,7, 0, 0);
part_type_speed(trail2,0, 0, 0, 1);
part_type_color3(trail2, c_black, c_blue, c_teal)
part_type_life(trail2, 10, 30);
part_type_orientation(trail2, -180, 180, 0, 0, 1);

