/// @description Insert description here
// You can write your code in this editor

tile_width = sprite_get_width(sGridSquare);
tile_height = sprite_get_height(sGridSquare);

start_level(level);

// Set up grid
for (var i=0; i <= array_length_1d(solution_array)-1; i++) {
	
	var tile = solution_array[i];
	var r = tile[0];
	var c = tile[1];
	var type = tile[2];
	
	var obj = type == "BLANK" ? oBlankTile : oTile;
	
	var o = instance_create_layer(
		x + (r-1) * (tile_width + 4),
		y + (c-1)*(tile_height + 4), 
		"Grid_Layer", 
		obj
	);
	o.type = type;
	o.row = r;
	o.column = c;

}