/// @description Insert description here
// You can write your code in this editor

if go {
	fade_alpha += .015;
	if alpha_timer >= 0 and alpha == 1 {
		alpha_timer--;
		if alpha_timer < 0 {
			alpha = 0;
		}
	}
	
	if alpha_timer <= 10 and alpha == 0 {
		alpha_timer++;
		if alpha_timer > 10 {
			alpha = 1;
		}
	}
	
}

var xx = room_width/4;
var yy = room_height * 3/4;

for (var i=0; i<array_length_1d(options); i++) {
	
	// Option
	draw_text(xx,yy+ i*32, options[i]);

	if selected == i {
		
		if !go {
			// Description
			draw_text(xx + 175,yy + i*32, descriptions[selected]);
		}
		
		draw_set_alpha(alpha);
		draw_triangle(
			xx-18,yy+i*32 - 4,
			xx-18,yy+i*32 + 20,
			xx-6,yy+i*32 + 8,
			false
		)
		draw_set_alpha(1);
	}
}


//draw fade
/*
draw_set_alpha(fade_alpha);
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,false);
draw_set_color(c_white);
draw_set_alpha(1);
*/