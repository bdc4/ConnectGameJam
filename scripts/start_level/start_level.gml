
var level = argument0;

if level >= 12 {
	show_message("You Win!");
	game_end();
}

// Create an array of solution components
//Row then column
solution_array = [];
location_array = [];
get_level_data_from_csv(level);


//shuffle_location_array();



