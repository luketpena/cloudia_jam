/// @description Insert description here
// You can write your code in this editor

curve = animcurve_get_channel(c_lump, 0);

u_height = 4;

rows = room_height / u_height;

for( var i=0; i<rows; i++ ) {
	var y_mpy = animcurve_channel_evaluate(curve, i/rows);
	var chance = floor(y_mpy * 20);
	var roll = irandom(chance);
	if (roll = 0) {
		var xx_tmp = random(room_width);
		var yy_tmp = i * u_height;
		instance_create_layer(xx_tmp, o_environment.surface_height + 32 +  yy_tmp, layer, o_artifact);
	}
	
}

curve2 = animcurve_get_channel(c_lump, 1);

for( var i=0; i<rows; i++ ) {
	var y_mpy = animcurve_channel_evaluate(curve2, i/rows);
	var chance = floor(y_mpy * 20);
	var roll = irandom(chance);
	if (roll = 0) {
		var xx_tmp = random(room_width);
		var yy_tmp = i * u_height;
		instance_create_layer(xx_tmp,  o_environment.surface_height + 32 +  yy_tmp, layer, o_obstacle);
	}
	
}

curveBomb = animcurve_get_channel(c_lump, 2);

for( var i=0; i<rows; i++ ) {
	var y_mpy = animcurve_channel_evaluate(curveBomb, i/rows);
	var chance = floor(y_mpy * 50);
	var roll = irandom(chance);
	if (roll = 0) {
		var xx_tmp = random(room_width);
		var yy_tmp = i * u_height;
		instance_create_layer(xx_tmp,  o_environment.surface_height + 32 +  yy_tmp, layer, o_bomb);
	}
	
}

curvePowerup = animcurve_get_channel(c_lump, 3);

for( var i=0; i<rows; i++ ) {
	var y_mpy = animcurve_channel_evaluate(curvePowerup, i/rows);
	var chance = floor(y_mpy * 30);
	var roll = irandom(chance);
	if (roll = 0) {
		var xx_tmp = random(room_width);
		var yy_tmp = i * u_height;
		instance_create_layer(xx_tmp,  o_environment.surface_height + 32 + yy_tmp, layer, o_powerup);
	}
	
}