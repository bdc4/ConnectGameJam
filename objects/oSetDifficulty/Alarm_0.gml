/// @description Insert description here
// You can write your code in this editor

if options[selected] == "Back" {
	TARGET_ROOM = roomMainMenu;
}

DIFFICULTY = options[selected];
room_goto(TARGET_ROOM);
