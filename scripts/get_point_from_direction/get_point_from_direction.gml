
var p = argument0;
var arr = [true_x,true_y];

switch (p) {
	
	case "N": 
		arr = [true_x,true_y-sprite_height/2];
		break;

	case "S": 
		arr = [true_x,true_y+sprite_height/2];
		break;
		
	case "E": 
		arr = [true_x+sprite_width/2,true_y];
		break;
		
	case "W": 
		arr = [true_x-sprite_width/2,true_y];
		break;
	
	case "*": 
		arr = [true_x,true_y];
		break;
	
}

return arr;
