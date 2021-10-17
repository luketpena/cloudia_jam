gpu_set_blendmode(bm_add);
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_lime, image_alpha);
	draw_sprite_ext(s_glow, image_index, x, y, .5, .5, image_angle, c_lime, .1 * image_alpha);
gpu_set_blendmode(bm_normal);