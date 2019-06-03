/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_text(room_width/2,room_height/2,win_message);

if win_message != "" {
	draw_set_halign(fa_left);
	var sw = string_width("BACKSPACE to Change Difficulty");
	draw_text(room_width/2 - sw/2,room_height/2+32,
	string_hash_to_newline("ENTER     - Play Again#BACKSPACE - Change Difficulty / Score Limit#ESC       - Main Menu"));

	// Replay
	if keyboard_check_pressed(vk_enter) {
		room_restart();
	}
	
	// Change Difficulty
	if keyboard_check_pressed(vk_backspace) {
		with (all) {
			instance_destroy();
		}

		instance_create_depth(x,y,depth,oSetDifficulty);
		TARGET_ROOM = roomPvP;
	}
	

} else {
	draw_set_halign(fa_center);
	draw_text(room_width/2,100,"First to "+string(score_limit)+" wins!");
}

draw_set_halign(fa_left);
