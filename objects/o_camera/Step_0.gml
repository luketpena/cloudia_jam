targetPos = {
	x: clamp(o_cloudia.x - 128, 0, room_width - 256),
	y: clamp(o_cloudia.y - 128, 0, room_height - 256)
}

pos.x += (targetPos.x - pos.x) / 10;
pos.y += (targetPos.y - pos.y) / 10;

camera_set_view_pos(view_camera[0], pos.x, pos.y)