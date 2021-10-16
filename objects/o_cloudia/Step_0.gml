/// @description Movement Controller
var _left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var _right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) || keyboard_check(ord("S"));

var moveX = (_right - _left) * movespd;
var moveY = (_down - _up) * movespd;

if (moveX != 0) {
	hspd = approach(hspd, moveX, accel);
} else {
	hspd *= .9;	
}

if (moveY != 0) {
	vspd = approach(vspd, moveY, accel);
} else {
	vspd *= .9;	
}


phy_position_x += hspd;
phy_position_y += vspd;

