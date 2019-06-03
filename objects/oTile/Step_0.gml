/// @description Insert description here
// You can write your code in this editor

if shake {
	shake_x = irandom_range(-shake_intensity,shake_intensity);
	shake_y = irandom_range(-shake_intensity,shake_intensity);
	shake_intensity -= .25;
}

if (player != "NONE") {
	true_x = lerp(true_x,x,.25);
	true_y = lerp(true_y,y,.25);
}

else {
	true_x = x;
	true_y = y;
}