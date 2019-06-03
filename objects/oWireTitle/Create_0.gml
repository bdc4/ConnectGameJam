/// @description Insert description here
// You can write your code in this editor

tile_width = sprite_get_width(sBlock);
tile_height = sprite_get_height(sBlock);

tiles = [
	
	//W
	["S*", 0, 0],
	["NS", 0, 1],
	["NS", 0, 2],
	["NS", 0, 3],
	["NE", 0, 4],
	["NW", 1, 4],
	["ES", 1, 3],
	["WS", 2, 3],
	["NE", 2, 4],
	["WN", 3, 4],
	["NS", 3, 3],
	["NS", 3, 2],
	["NS", 3, 1],
	["*S", 3, 0],
	
	//I
	["**", 5,1],
	["S*", 5,2],
	["NS", 5,3],
	["*N", 5,4],
	
	//R
	["N*", 7,4],
	["NS", 7, 3],
	["NS", 7, 2],
	["NS", 7, 1],
	["SE", 7, 0],
	
	["EW", 8, 0],
	//["**", 8, 1],
	["WS", 9, 0],
	["NW", 9, 1],
	["ES", 8, 1],
	["NE", 8, 2],
	["WS", 9, 2],
	["NS", 9, 3],
	["*N", 9, 4],
	
	//E
	["W*", 13, 0],
	["EW", 12, 0],
	["SE", 11, 0],
	["NS", 11, 1],
	["NS", 11, 2],
	["*W", 12, 2],
	["NS", 11, 3],
	["NE", 11, 4],
	["EW", 12, 4],
	["*W", 13, 4]
];

type_speed = 2;
alarm[0] = type_speed;
index = 0;
done = false;
audio_stop_all();
