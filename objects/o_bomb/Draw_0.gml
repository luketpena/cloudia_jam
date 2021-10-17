var s = lengthdir_x(1, rot);
var size = .9 + .1 * s;

var dis = 5 * ( charge / (2 * room_speed));
gpu_set_blendmode(bm_add);
	draw_sprite_ext(s_glow, 0, x , y , 1, 1, 0, c_red, .75 + .25 * s);
gpu_set_blendmode(bm_normal);
draw_sprite_ext(sprite_index, 0, x + random_range(-dis, dis), y  + random_range(-dis, dis), size, size, 0, c_white, 1);