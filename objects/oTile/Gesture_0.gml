/// @description Insert description here
// You can write your code in this editor

// Check if bordering blank tile
var target_tile = noone;

if target_tile == noone {
	target_tile = instance_place(x,y+sprite_height,oBlankTile);
}

if target_tile == noone {
	target_tile = instance_place(x,y-sprite_height,oBlankTile);
}

if target_tile == noone {
	target_tile = instance_place(x-sprite_width,y,oBlankTile);
}

if target_tile == noone {
	target_tile = instance_place(x+sprite_width,y,oBlankTile);
}

// Swap tiles
if target_tile != noone and (string_char_at(type,1) != "*" or type == "**") {
	var temp_x = x;
	var temp_y = y;
	var temp_r = row;
	var temp_c = column;

	x = target_tile.x;
	y = target_tile.y
	row = target_tile.row;
	column = target_tile.column;
	
	with (oBlankTile) {
		x = temp_x;
		y = temp_y;
		row = temp_r;
		column = temp_c;
	}
}