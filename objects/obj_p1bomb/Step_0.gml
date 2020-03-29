/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_p1)){
x = obj_p1.x;
y = obj_p1.y;

}

//bombings

	if(!audio_is_playing(exploding)){
	audio_play_sound(exploding, 0, false);
	}
	
	var inst = id; 
	var instp2 = id
		while inst != noone {
		   inst = instance_place(x,y,obj_platform)
		   instance_destroy(inst);
		   

			instp2 = instance_place(x,y, obj_p2)
		   instance_destroy(instp2);

		   
		}
	
	
	

//var inst = id; //start it out as something other than 'noone'
//while inst != noone {
//   inst = instance_place(x,y,obj_platform); //inst will be a platform overlapping this explosion
//   instance_destroy(inst); //destroy that platform