
var level = argument0;
var ind = 0;
var file_grid = load_csv("Connect"+string(level)+".csv");
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
