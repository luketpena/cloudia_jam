draw_set_color(c_yellow);
draw_set_alpha(1);
draw_set_valign(fa_top);

draw_set_halign(fa_left);
draw_text(16, 16, "Time remaining: " + string(ceil(time / room_speed)))