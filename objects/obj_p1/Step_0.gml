/// @description Insert description here
// You can write your code in this editor
event_inherited();


if(dead = false){
	if(keyboard_check(vk_left)){
		xSpeed -= xAccel;
		image_xscale = 1;
		}


	if(keyboard_check(vk_right)){
	
		xSpeed += xAccel;
		image_xscale = -1;
		}
		
}

//ground + score
count++;

if(count > 20){
//if(place_meeting(x, y +ySpeed , obj_ground) ){
//	while(!place_meeting(x , y + sign(ySpeed), obj_ground)){
//		y += sign(ySpeed);
//	}
	if(y > room_height){
	instance_create_layer(x,y - 90, "Instances", obj_explosion)
	
	obj_king.score1 --;
	audio_play_sound(death, 0, false);
	instance_destroy(obj_p1);

	
	
	}
}



//fallingsprite
if(!keyboard_check(vk_up)){
if(ySpeed < 0 && (xSpeed < 0 || xSpeed == 0) && jumping = true){
	image_speed = 1.75;
	sprite_index = spr_p1falling1;
	
	jumping = false;
//} else if((xSpeed < 0 || xSpeed == 0) && jumping = false){
//	image_speed = 1.75;
//	sprite_index = spr_p1;

//}
}
if(ySpeed < 0 && xSpeed > 0 && jumping = true){


	image_speed = 1.75;
	sprite_index = spr_p1falling1;

	jumping = false;
//} else if((xSpeed > 0) && jumping = false){
//	image_speed = 1.75;
//	sprite_index = spr_p1right;

//}
	}

}


	//if(place_meeting(x, y + abs(ySpeed), obj_p2) && y > obj_p2.y){
	//				obj_p1.ySpeed = -10;		
	//				obj_p1.jumping = true;
	//				obj_p2.ySpeed = 15;
	//				dead = true;
	//				audio_play_sound(playerhit, 0, false);
	//				obj_king.score2 ++;
	//			}
	

if(dead = true){

		
		sprite_index = spr_p1death
	}
						
//exploding ability
if(dead = false){
if(keyboard_check(vk_up)){

	if(!audio_is_playing(ticking)){
	audio_play_sound(ticking, 0, false);
	}
	
	sprite_index = spr_p1bombing
	
	delay++;
	
	if(delay > 60){
		
		
		instance_create_layer(x,y, "Instances", obj_p1bomb);
		dead = true;
		bombing = true;
		ySpeed = 0;
		xSpeed = 0;
		
		}
	
		
} else {
	
	audio_stop_sound(ticking);
	
}

if(keyboard_check_released(vk_up)){
	
	delay = 0;
	sprite_index = spr_p1falling1;
	
	}
}


if(dead = false && y < room_height){
	
		part_particles_create(obj_king.parts, obj_p1.x, obj_p1.y, obj_king.trail, 5);
	
	}
	