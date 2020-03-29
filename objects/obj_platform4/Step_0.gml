/// @description Insert description here
// You can write your code in this editor
randomize();

if(deleter > 0){

	image_speed = 1;
	sprite_index = destroybrick4;
	deleter --;


		
	
}


if(image_index % 2 == 0 || image_index % 5 == 0 || image_index %8 == 0|| image_index %12 == 0){
	
	image_speed = 0;
	counter ++
	
	if(counter > 30){
		image_speed = 1;
		counter = 0
		
	}
}
