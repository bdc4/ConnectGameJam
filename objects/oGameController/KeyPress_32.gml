/// @description Insert description here
// You can write your code in this editor

var grid = oGrid;
var l = grid.level+1;
var xx = grid.x;
var yy = grid.y;

with all {
	if id != other.id {
		instance_destroy();
	}
}

var grid = instance_create_layer(xx,yy,"Instances",oGrid);
grid.level = l;