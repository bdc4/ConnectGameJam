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
if target_tile != noone {
	var temp_x = x;
	var temp_y = y;

	x = target_tile.x;
	y = target_tile.y
	
	with (oBlankTile) {
		x = temp_x;
		y = temp_y;
	}
}