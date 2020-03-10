/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_red);

draw_set_font(Calibri);
draw_set_halign(fa_left);
draw_text_transformed(30,30, score1, 4,4, 0);


draw_set_color(c_blue);
draw_set_halign(fa_right);
draw_text_transformed(room_width + 150,30, score2, 4,4, 0);