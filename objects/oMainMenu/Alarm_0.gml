/// @description Insert description here
// You can write your code in this editor

if selected == 0 {
	instance_change(oSetDifficulty, true);
	TARGET_ROOM = roomPractice;
}

else if selected == 1 {
	instance_change(oSetDifficulty, true);
	TARGET_ROOM  = roomPvP;
}

else if selected == 2 {
	game_end();
}
