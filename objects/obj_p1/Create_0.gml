/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_p1;
event_inherited()
count = 0;


trail = part_type_create();
trail.depth = -10000;
part_type_shape(trail, pt_shape_pixel);

part_type_size(trail, 3,7, 0, 0);
part_type_speed(trail,0, 0, 0, 1);
part_type_color3(trail, c_black,c_red, c_fuchsia)
part_type_life(trail, 10, 30);

part_type_orientation(trail, -180, 180, 0, 0, 1);
