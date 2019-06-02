/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_text(x,y-200, "PLAYER "+string_copy(player,2,1));
draw_text(x,y-150,"Score: "+string(myScore));
draw_set_halign(fa_left);

var controlSpr = player == "P1" ? sArrows : sWSAD;
draw_sprite(controlSpr,0,x,y+300);