/// @description Insert description here
// You can write your code in this editor

if(instance_number(obj_p1) == 0){
	
	p1distance = 0;
	
} else {
	p1distance = obj_p1.y;
	
}


if(instance_number(obj_p2) == 0){
	
	p2distance = 0;
} else {
	
	p2distance = obj_p2.y;
	
}

//if(instance_exists(obj_p1) && instance_exists(obj_p2)){
//p1distance = obj_p1.y;
//p2distance = obj_p2.y;

//}

if(abs(p1distance - p2distance) > 500){

if(p1distance < p2distance){
	
	avg = p2distance
} else if(p1distance > p2distance){
	
	avg = p1distance
	}

}

if(abs(p1distance - p2distance) < 500){

avg = mean(p1distance, p2distance);

}

y += (avg - y)/20

clamp(y, -50, room_height + 50);

camera_set_view_pos(view_camera[0], x, y - 250)