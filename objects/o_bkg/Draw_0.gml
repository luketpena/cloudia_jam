draw_set_color(c_black)
draw_rectangle(0, o_environment.surface_height, room_width, room_height, false)

if (surface_exists(o_environment.surf_tunnel)) {
	shader_set(sh_cutoutWhite);
		draw_surface_ext(o_environment.surf_tunnel, 0, o_environment.surface_height, 1, 1, 0, c_white, 1);
	shader_reset();
	gpu_set_blendmode(bm_add);
		draw_sprite_ext(s_glow, 0, o_cloudia.x, o_cloudia.y, 1.5, 1.5, 0, c_lime, lerp(.3, 1, o_cloudia.y / room_height));
	gpu_set_blendmode(bm_normal);
		
	shader_set(sh_tunnelToBkg);
	draw_surface_ext(o_environment.surf_tunnel, 0, o_environment.surface_height, 1, 1, 0, c_white, 1);
	shader_reset();
}