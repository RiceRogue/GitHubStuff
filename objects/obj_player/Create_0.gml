/// @description Insert description here
// You can write your code in this editor


randomize();
ySpeed = -18;
xSpeed = -random_range(-75, 75);
spawned = false;


parts = part_system_create();

trail = part_type_create();
trail.depth = -1000;
part_type_shape(trail, pt_shape_pixel);

part_type_size(trail, 5,10, 0, 0);
part_type_speed(trail,0, 0, 0, 1);
part_type_color3(trail, c_black, c_red, c_fuchsia)
part_type_life(trail, 60, 120);

part_type_orientation(trail, -180, 180, 0, 0, 1);

trail2 = part_type_create();
part_type_shape(trail2, pt_shape_pixel);

part_type_size(trail2, 5,10, 0, 0);
part_type_speed(trail2,0, 0, 0, 1);
part_type_color3(trail2, c_black, c_blue, c_teal)
part_type_life(trail2, 60, 120);
part_type_orientation(trail2, -180, 180, 0, 0, 1);
