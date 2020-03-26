/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_p1)){
x = obj_p1.x;
y = obj_p1.y;

}

if(place_meeting(x,y, obj_platform)){
	
	
	//instance_destroy(obj_platform);
	
	
}


//var inst = id; //start it out as something other than 'noone'
//while inst != noone {
//   inst = instance_place(x,y,obj_platform); //inst will be a platform overlapping this explosion
//   instance_destroy(inst); //destroy that platform