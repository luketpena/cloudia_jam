if (instance_exists(o_cloudia)) {
	gpu_set_blendmode(bm_add);
		draw_sprite_ext(s_glow, 0, o_cloudia.x, o_cloudia.y, .5, .5, 0, c_lime, .3);
	gpu_set_blendmode(bm_normal);	
}