
var difficulty = argument0;
var ind = 0;
var levels = get_files_in_folder("Solutions/"+difficulty);

if object_index == oGrid {
	var newLevel = irandom(array_length_1d(levels)-1);
	var newLevel = level;
		while (newLevel == level) {
			newLevel = irandom(array_length_1d(levels)-1);
		}
		level = newLevel;
}
var file_location = levels[level];
show_debug_message("File Chosen: "+file_location);
var file_grid = load_csv(file_location);

var ww = ds_grid_width(file_grid);
var hh = ds_grid_height(file_grid);
for (var i = 0; i < ww; i++;) {
    for (var j = 0; j < hh; j++;) {
		location_array[ind] = [i,j];
        solution_array[ind] = string(file_grid[# i, j]);
		ind++;
	}
}

width = ww;
height = hh;
