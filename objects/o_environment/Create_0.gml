surface_height = 64
underground_height = room_height - surface_height

alarm [0] = 1 * room_speed

surf_dirt = noone;
surf_tunnel = noone;
surf_edge = noone;

surf_init = false;

lastx = o_cloudia.x;
lasty = o_cloudia.y;

audio_play_sound(snd_background,5,10);


for (var i=0; i<200; i++) {
	instance_create_layer(irandom(room_width), 0, "bkg", o_surfaceObject);	
}