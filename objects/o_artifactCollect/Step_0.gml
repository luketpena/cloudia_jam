size += .1;
fade -= .05;

if (fade < 0) instance_destroy();
if (!snd) {
	audio_play_sound(snd_bing,99,false);
	snd = true;
}