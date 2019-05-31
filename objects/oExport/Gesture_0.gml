/// @description Insert description here
// You can write your code in this editor

// Create CSV from current level data
var file = file_text_open_write("Connect"+string(oGrid.level)+".csv");

var export_str = "";

for (var i=0; i<oGrid.height; i++) {

	for (var j=0; j<oGrid.width; j++) {
		var tile = get_tile_from_coordinates(j,i);
		export_str += tile.type;
		if j < oGrid.width-1 {
			export_str += ",";
		}
	}
	export_str += "#";

}

export_str = string_hash_to_newline(export_str);
show_debug_message(export_str);


file_text_write_string(file, export_str);
file_text_close(file);
