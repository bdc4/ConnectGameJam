/// @description Insert description here
// You can write your code in this editor

if !go {
	if keyboard_check_pressed(vk_up) {
		selected--;
	}

	if keyboard_check_pressed(vk_down) {
		selected++;
	}

	selected = clamp(selected,0,array_length_1d(options)-1);
}