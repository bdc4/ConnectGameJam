/// @description Insert description here
// You can write your code in this editor

if skip == false {
	skip = true;
	with oTile {
		x = xstart;
		y = ystart;
	}

	with oGrid {
		myScore--;
	}

	with oBlankTile {
		instance_destroy();
	}
}