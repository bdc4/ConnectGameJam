/// @description Insert description here
// You can write your code in this editor

draw_sprite(sprite_index,image_index,true_x+shake_x,true_y+shake_y);
//draw_text(x,y,string(row)+","+string(column));
//draw_text(x+8,y+8,type);

// Draw "Pipes"

var p1 = string_char_at(type, 1);
var p2 = string_char_at(type, 2);

var spoke = (p1 == "*" or p2 == "*") and p1 != p2;
var conduit = p1 == "*" and p2 == "*";
// ie: p1 = "N" and p2 = "S"

p1 = get_point_from_direction(p1);
p2 = get_point_from_direction(p2);

//show_debug_message("Drawing pipes for "+type+" tile @ " +string(row)+","+string(column));

var col = hot ? c_white : c_red;

draw_set_color(col);

var x1 = p1[0]; var y1 = p1[1];
var x2 = p2[0]; var y2 = p2[1];

if spoke {
	draw_rectangle(true_x+shake_x - 8,true_y+shake_y-8, true_x+shake_x+8,true_y+shake_y+8,false )
}
else if (conduit) {
	draw_circle(true_x+shake_x,true_y+shake_y,8,false);
}

	draw_line(true_x+shake_x,true_y+shake_y,x1, y1);
	draw_line(true_x+shake_x,true_y+shake_y,x2, y2);

draw_set_color(c_white);

