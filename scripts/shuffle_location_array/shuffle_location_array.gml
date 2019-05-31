

/*
	[
		[1,1],
		[2,1],
		[1,2],
		[2,2],
	]

*/

var list = ds_list_create();
var shuffled_array = [];

for (var i=0; i<array_length_1d(location_array); i++) {
	list[| i] = location_array[i];
}

ds_list_shuffle(list);

for (var i=0; i<ds_list_size(list); i++) {
	shuffled_array[i] = list[| i];
}

location_array = shuffled_array;
ds_list_destroy(list);


