switch(global.powerup) {
	case 1:
		o_cloudia.movespd = 4;
		alarm[0] = 5 * room_speed;
		audio_play_sound(snd_superspeed, 1, false);
		break;
		
	case 2:
		//bomb
		instance_create_layer(o_cloudia.x, o_cloudia.y, "effects_top", o_goodExplosion);
		break;
		
	case 3:
		//radar
		for (var i=0; i<instance_number(o_artifact); i++) {
			var a = instance_find(o_artifact, i);
			var o = instance_create_layer(a.x, a.y, "effects_top", o_radar);
			o.image_index = a.index;
			o.image_angle = a.image_index;
		}
		audio_play_sound(snd_radar, 1, false);
		break;
}

global.powerup = -1;