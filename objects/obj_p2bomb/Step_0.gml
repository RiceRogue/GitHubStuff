/// @description Insert description here
// You can write your code in this editor
if(instance_number(obj_p2) > 0){
x = obj_p2.x;
y = obj_p2.y;

}

//bombings

	if(!audio_is_playing(exploding2)){
	audio_play_sound(exploding2, 0, false);
	}
	
	var inst = id; 
	var instp2 = id;
	
		while inst != noone {
		   inst = instance_place(x,y,obj_platform)
		   instance_destroy(inst);
		   
		    
			if(instance_number(obj_p1) > 0){
			instp2 = instance_place(x,y, obj_p1)
		   instance_destroy(instp2);
			
			if(instp2 != noone){
				
				obj_king.bombedp2 = true;
				} else if(instp2 == noone){
					
					obj_king.fizzp2 = true;
				}
			
		
			}
		}
	
	
	