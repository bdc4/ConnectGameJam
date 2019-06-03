/// @description Insert description here
// You can write your code in this editor

if options[selected] == "Back" {
	TARGET_ROOM = roomMainMenu;
	room_goto(TARGET_ROOM);
}

DIFFICULTY = options[selected];

if TARGET_ROOM == roomPractice {
	room_goto(TARGET_ROOM);
}

else {
	instance_change(oPlayTo, true);
}

