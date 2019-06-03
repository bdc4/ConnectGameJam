/// @description Insert description here
// You can write your code in this editor

if ready and player != "NONE" {
	var n = keyboard_check_pressed(up) ? -sprite_height : 0;
	var s = keyboard_check_pressed(down) ? sprite_height : 0;
	var e = keyboard_check_pressed(right) ? sprite_width : 0;
	var w = keyboard_check_pressed(left) ? -sprite_width : 0;

	var tile = noone;

	if n != 0 {
		tile = instance_place(x,y+n,oTile);
	}

	else if s != 0 {
		tile = instance_place(x,y+s,oTile);
	}

	else if e != 0 {
		tile = instance_place(x+e,y,oTile);
	}

	else if w != 0 {
		tile = instance_place(x+w,y,oTile);
	}

	// Perform swap
	if tile != noone {
		
		with (oTile) {
			if player == other.player {
				hot = false;
			}
		}
		
		with tile.id {
			sound_on = true;
			event_user(0);
		}
	}
}