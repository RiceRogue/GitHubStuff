/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_p2;
event_inherited();
count = 0;


trail2 = part_type_create();
trail2.depth = -10000
part_type_shape(trail2, pt_shape_pixel);

part_type_size(trail2, 3,7, 0, 0);
part_type_speed(trail2,0, 0, 0, 1);
part_type_color3(trail2, c_black, c_blue, c_teal)
part_type_life(trail2, 10, 30);
part_type_orientation(trail2, -180, 180, 0, 0, 1);
