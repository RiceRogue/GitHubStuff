/// @description Insert description here
// You can write your code in this editor
event_inherited();

if(dead = false){
if(keyboard_check(ord("A"))){
	xSpeed -= xAccel;
	image_xscale = 1;
	}


if(keyboard_check(ord("D"))){
	
	xSpeed += xAccel;
	image_xscale = -1;
	}
	
}	
			
count ++;
//ground + score

if(count > 20){
//if(place_meeting(x, y + ySpeed , obj_ground) ){
//	while(!place_meeting(x , y + sign(ySpeed), obj_ground)){
//		y += sign(ySpeed);
//	}
	
	if(y > room_height){
	instance_create_layer(x,y - 90, "Instances", obj_explosion)
	obj_king.score2 --;
	audio_play_sound(death, 0, false);
	instance_destroy(obj_p2, 0);

	
	

	global.respawn2 = true;
	}
}

	
	//fallingsprite

if(ySpeed < 0 && (xSpeed < 0 || xSpeed == 0) && jumping = true){
	image_speed = 1.75;
	sprite_index = spr_p2falling1;
	jumping = false;
	
}

if(ySpeed < 0 && xSpeed > 0 && jumping = true){
	image_speed = 1.75;
	sprite_index = spr_p2falling1;
	jumping = false;
}


				//if(place_meeting(x, y + abs(ySpeed), obj_p1) && y > obj_p1.y){
				//	obj_p2.ySpeed = -10;		
				//	obj_p2.jumping = true;
				//	obj_p1.ySpeed = 15;
				//	dead = true;
				//	audio_play_sound(playerhit, 0, false);
				//	obj_king.score1 ++;
				//}
			

if(dead = true){


		sprite_index = spr_p2death
	}
						

	