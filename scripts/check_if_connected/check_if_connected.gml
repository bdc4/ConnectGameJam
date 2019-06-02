
var nt = instance_place(x,y-sprite_height,oTile);
var et = instance_place(x+sprite_width,y,oTile);
var st = instance_place(x,y+sprite_height,oTile);
var wt = instance_place(x-sprite_width,y,oTile);

// Debugging
//draw_circle(x,y-32,10,false);draw_circle(x,y+32,10,false);
//draw_circle(x-32,y,10,false);draw_circle(x+32,y,10,false);

//Check Spoke
if string_char_at(type,1) == "*" {
	return true;
}

//Check North
if string_count("N",type) > 0 {
	//draw_circle(x,y-sprite_height,30,false);
	if nt != noone and string_count("S", nt.type) > 0 and nt.hot {
		return true;
	}
}

//Check South
if string_count("S",type) > 0 {
	if st != noone and string_count("N", st.type) > 0 and st.hot {
		return true;
	}
}

//Check East
if string_count("E",type) > 0 {
	if et != noone and string_count("W", et.type) > 0 and et.hot {
		return true;
	}
}

//Check West
if string_count("W",type) > 0 {
	if wt != noone and string_count("E", wt.type) > 0 and wt.hot  {
		return true;
	}
}

return false;
