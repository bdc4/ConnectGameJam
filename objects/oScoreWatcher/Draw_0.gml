/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_text(room_width/2,room_height/2,win_message);

if win_message != "" {
	draw_text(room_width/2,room_height/2+32,
	string_hash_to_newline("R to Restart#Esc for Main Menu"));

	if keyboard_check_pressed(ord("R")) {
		room_restart();
	}

} else {
	draw_text(room_width/2,100,"First to "+string(score_limit)+" wins!");
}

draw_set_halign(fa_left);
