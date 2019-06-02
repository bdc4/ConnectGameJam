/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_escape) {
	game_restart();
}


//Check if level won
var win = true;
with (oTile) {
	if !hot {
		if player == other.player {
			win = false;
		}
	}
}

if win and !instance_exists(oExport) {
	win_timer--;
	if win_timer <= 0 {
		
		with (oTileParent) {
			if player == other.player or room == roomPractice {
				instance_create_depth(x,y,depth,oTileDead);
				instance_destroy();
			} else {
				shake = true;
				alarm[0] = 30;
			}
		}
		myScore++;
		alarm[0] = 1;
		win_timer = 60;
	}
} else {
	win_timer = 30;
}
