/// @description Insert description here
// You can write your code in this editor
event_inherited();
image_angle = random(360);
fade = 1;
impact = false;
instance_create_layer(x, y, layer, o_explodeDig);
audio_play_sound(snd_explode_good,11,false);