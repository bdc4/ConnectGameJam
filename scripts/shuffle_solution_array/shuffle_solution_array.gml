
/*
var used_slots = [];
var final_array = [];

var s = solution_array[0];
var r = s[0];
var c = s[1];
var t = s[2];

//used_slots[0] = [r,c];


while (array_length_1d(final_array) < array_length_1d(solution_array)) {
	
	// Get random slot
	s = solution_array[irandom_range(0, array_length_1d(solution_array)-1)];
	r = s[0];
	c = s[1];
	t = s[2];
	
	// Check if slot has already been used
	
}
*/

/*
while (array_length_1d(used_indexes) < array_length_1d(solution_array)) {
	
	i = irandom_range(0, array_length_1d(solution_array)-1);
	var cont = true;
	
	for (var j=0; j<array_length_1d(used_indexes); j++) {
		if i == used_indexes[j] {
			cont = false;
		}
		
	}
	
	if cont {
		var s1 = solution_array[z];
		var s1_temp = s1;
		
		var s2 = solution_array[i];
		var s2_temp = s2;
		
		// Swap Rows
		s1[0] = s2[0];
		
		// Swap Columns
		s1[1] = s2[1];
		
		s2[0] = s1_temp[0];
		s2[1] = s2_temp[1];
		
		solution_array[i] = s1;
		solution_array[z] = s2;
		
		z = i;
		used_indexes[array_length_1d(used_indexes)] = i;
		
	}
	
	
}

show_debug_message("Shuffled Solution Array:");
show_debug_message(solution_array);

return solution_array;
*/