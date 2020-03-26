/// @description Insert description here
// You can write your code in this editor


x += xSpeed;
xSpeed *= 0.92;



y += ySpeed;
ySpeed += grav;





//wall collisions
if(x < 0){
	x = 0;
	xSpeed = -1 * xSpeed;
	
}

if(x > room_width - 16){
	x = room_width - 16;
	xSpeed = -1 * xSpeed;
	
}



//bounces

if(dead = false){
if(ySpeed > 0){
	
	for(var dist_moved = 0; dist_moved < ySpeed; dist_moved ++){
		var new_y = y + dist_moved;
		var colliding = (instance_place(x, new_y, obj_solid))
			
		
			if(colliding != noone){
					if(place_meeting(x, y , colliding) == false){
						ySpeed = jumpSpeed;	
						y = new_y
						audio_play_sound(jump, 0, false);
						jumping = true;			
						

			
						
						if(colliding.object_index == obj_p1){
							
							obj_p2.ySpeed = jumpSpeed;	
							
							obj_p2.jumping = true;
							obj_p1.ySpeed = 20;
							if(obj_p1.dead = false){
							obj_king.score2 ++;
							}
							obj_p1.dead = true;
							audio_play_sound(playerhit, 0, false);
							alarm[0] = 10;
							sleep(100);
							instance_create_layer(obj_p1.x, obj_p1.y, "Instances", obj_explosion)
							
						}
						
						if(colliding.object_index == obj_p2){


							obj_p1.ySpeed = jumpSpeed;	
							
							obj_p1.jumping = true;
							obj_p1.ySpeed = 20;
							if(obj_p2.dead = false){
								obj_king.score1++;
							}
							obj_p2.dead = true;
							audio_play_sound(playerhit, 0, false);
							alarm[0] = 10;
							sleep(100);
							instance_create_layer(obj_p2.x, obj_p2.y, "Instances", obj_explosion)
						}
						
						
						
						
						if(colliding.object_index == obj_platform1 || 
						colliding.object_index == obj_platform2 ||
						colliding.object_index == obj_platform3 ||
						colliding.object_index == obj_platform4) {

							
						if(colliding.deleter == 0){
						colliding.deleter = 30;
						}
					} 
					break;
	
				}

			}
	
		}
	} else {
		y += ySpeed;//BF ADDITION
	}
}


if(dead = true){
	instance_create_layer(x,y, "Instances", obj_explosion)
	
}


//bombings
if(bombing == true){
	
	audio_play_sound(exploding, 0, false);
	var inst = id; 
		while inst != noone {
		   inst = instance_place(x,y,obj_platform)
		   instance_destroy(inst);
		}
	
	
	}	



//var camera_y = y - 0.5* camera_get_view_height(view_camera[0]);
//camera_set_view_pos( view_camera[0], 0, camera_y);

if(alarm[0] > 0){
	//give camera random position
	randomize();
	var camx = camera_get_view_x(view_camera[0]);
	var camy = camera_get_view_y(view_camera[0]);
	
	var newx = camx + irandom_range(-alarm[0]*2, alarm[0] *2);
	var newy = camy + irandom_range(-alarm[0]*2, alarm[0]*2);
	
	camera_set_view_pos(view_camera[0], newx, newy);
}



