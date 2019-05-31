
var p = argument0;
var arr = [x,y];

switch (p) {
	
	case "N": 
		arr = [x,bbox_top];
		break;

	case "S": 
		arr = [x,bbox_bottom];
		break;
		
	case "E": 
		arr = [bbox_right,y];
		break;
		
	case "W": 
		arr = [bbox_left,y];
		break;
	
	case "*": 
		arr = [x,y];
		break;
	
}

return arr;
