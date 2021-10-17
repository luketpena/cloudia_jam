gpu_set_blendmode(bm_add);
if (charge > 0) {
var size = .25 + .25 * charge;
	draw_sprite_ext(s_glow, 0, x, y, size, size, 0, c_aqua, .5 * charge); 
	}
	draw_sprite_ext(s_glow, 0, x, y, .5, .5, 0, c_yellow, .25 * ((lengthdir_x(1, rot) * .5) + .5)); 
gpu_set_blendmode(bm_normal);

draw_sprite_ext(sprite_index, index, x, y, 1, 1, image_angle, image_blend, 1);