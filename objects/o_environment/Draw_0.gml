if (surf_init) {
	var dis = point_distance(lastx, lasty, o_cloudia.x, o_cloudia.y);
	
	if (dis > 4) {
		surface_set_target(surf_edge);
			draw_sprite_ext(s_dig, irandom(2), o_cloudia.x, o_cloudia.y-surface_height, 1.2, 1.2, random(360), c_white, 1);
		surface_reset_target();
		lastx = o_cloudia.x;
		lasty = o_cloudia.y;

		surface_set_target(surf_tunnel);
			draw_sprite_ext(s_dig, irandom(2), o_cloudia.x, o_cloudia.y-surface_height, 1, 1, random(360), c_white, 1);
		surface_reset_target();
	}
	


	
	shader_set(sh_cutoutWhite);
		draw_surface_ext(surf_edge, 0, surface_height, 1, 1, 0, c_white, 1);
	shader_reset();
} else {
	surf_dirt = surface_create(room_width, underground_height);	
	surf_edge = surface_create(room_width, underground_height);	
	surf_tunnel = surface_create(room_width, underground_height);
	
	
	surface_set_target(surf_dirt);
		draw_sprite_tiled_ext(s_dirt, 0, 0, 0, 1, 1, c_white, 1);
	surface_reset_target();
	
	surface_set_target(surf_edge);
		var tex = surface_get_texture(surf_dirt);
		draw_primitive_begin_texture(pr_trianglestrip, tex);
			draw_vertex_texture_color(0, 0, 0, 0, c_white, 1);
			draw_vertex_texture_color(0, underground_height, 0, 1, c_black, 1);
			draw_vertex_texture_color(room_width, 0, 1, 0, c_white, 1);
			draw_vertex_texture_color(room_width, underground_height, 1, 1, c_black, 1);
		draw_primitive_end();
	surface_reset_target();
	
	surface_set_target(surf_tunnel);
		var tex = surface_get_texture(surf_dirt);
		draw_primitive_begin_texture(pr_trianglestrip, tex);
			draw_vertex_texture_color(0, 0, 0, 0, c_white, 1);
			draw_vertex_texture_color(0, underground_height, 0, 1, c_black, 1);
			draw_vertex_texture_color(room_width, 0, 1, 0, c_white, 1);
			draw_vertex_texture_color(room_width, underground_height, 1, 1, c_black, 1);
		draw_primitive_end();
	surface_reset_target();
	surf_init = true;
}