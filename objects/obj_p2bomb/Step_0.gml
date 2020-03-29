/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_p2)){
x = obj_p2.x;
y = obj_p2.y;

}

//bombings

	if(!audio_is_playing(exploding2)){
	audio_play_sound(exploding2, 0, false);
	}
	
	var inst = id; 
		while inst != noone {
		   inst = instance_place(x,y,obj_platform)
		   instance_destroy(inst);
		}
	
	
	