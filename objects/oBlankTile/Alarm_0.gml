/// @description Insert description here
// You can write your code in this editor

if player = "P1" {
	up = vk_up;
	down = vk_down;
	left = vk_left;
	right = vk_right;
}

else if player = "P2" {
	up = ord("W");
	down = ord("S");
	left = ord("A");
	right = ord("D");
}

// Shuffle grid
var notShuffled = true;

while notShuffled and player != "NONE" {
	var ind = 0;
	
	while ind < 80 {
		var tile = noone;
		var n = instance_place(x,y-sprite_height,oTile);
		var s = instance_place(x,y+sprite_height,oTile);
		var e = instance_place(x+sprite_width,y,oTile);
		var w = instance_place(x-sprite_width,y,oTile);
	
		while tile == noone {
			tile = choose(n,s,e,w);
		}

		// Perform swap
		if tile != noone {
		
			with (oTile) {
				if player == other.player {
					hot = false;
				}
			}
		
			with tile.id {
				event_user(0);
			}
		}
		ind++;
	}
	
	//Check if shuffled enough
	var unshuffledTiles = 0;
	with oTile {
		if player == other.player and x == xstart and y == ystart {
			unshuffledTiles++;
		}
	}
	
	notShuffled = false;//unshuffledTiles > 3;
	
}


ready = true;