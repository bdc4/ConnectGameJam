/// @description Insert description here
// You can write your code in this editor

draw_sprite(sprite_index,image_index,x+shake_x,y+shake_y);
//draw_text(x,y,string(row)+","+string(column));
draw_text(x+8,y+8,type);

// Draw "Pipes"

var p1 = string_char_at(type, 1);
var p2 = string_char_at(type, 2);

var spoke = p1 == "*" or p2 == "*";

// ie: p1 = "N" and p2 = "S"

p1 = get_point_from_direction(p1);
p2 = get_point_from_direction(p2);

//show_debug_message("Drawing pipes for "+type+" tile @ " +string(row)+","+string(column));

//check if "hot"
hot = check_if_connected();
var col = hot ? c_lime : c_red;

draw_set_color(col);

var x1 = p1[0]; var y1 = p1[1];
var x2 = p2[0]; var y2 = p2[1];

draw_line(x+shake_x,y+shake_y,x1, y1);
draw_line(x+shake_x,y+shake_y,x2, y2);

if (spoke) {
	draw_circle(x+shake_x,y+shake_y,8,false);
}

draw_set_color(c_white);

