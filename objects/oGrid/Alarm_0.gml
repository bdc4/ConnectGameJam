/// @description Insert description here
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
	o.player = player;

}

if room == roomPractice {
	var xx = oGridSolution.x;
	var yy = oGridSolution.y;
	var d = oGridSolution.depth;
	instance_destroy(oGridSolution);
	var sg = instance_create_depth(xx,yy,depth,oGridSolution);
	with sg {
		level = other.level;
		event_user(0);
	}
}
