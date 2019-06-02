/// @description Update Solution
// You can write your code in this editor

tile_width = sprite_get_width(sGridSquare);
tile_height = sprite_get_height(sGridSquare);

start_level(difficulty);

// Set up grid
for (var i=0; i <= array_length_1d(solution_array)-1; i++) {
	
	var location = location_array[i];
	var r = location[0];
	var c = location[1];
	
	var type = solution_array[i];
	
	var obj = type == "BLANK" ? oBlankTile : oTile;
	
	var o = instance_create_depth(
		x + (r-1) * (tile_width + 4),
		y + (c-1)*(tile_height + 4), 
		0, 
		obj
	);
	o.type = type;
	o.row = r;
	o.column = c;
	o.player = "NONE";

}