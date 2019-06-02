/// @description Insert description here
// You can write your code in this editor

if options[selected] == "Back" {
	instance_change(oMainMenu,true);
	exit;
}

DIFFICULTY = options[selected];
room_goto(TARGET_ROOM);
