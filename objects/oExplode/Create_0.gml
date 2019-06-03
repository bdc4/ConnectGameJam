/// @description Insert description here
// You can write your code in this editor
gravity = 0;
hspeed = 0;
vspeed = 0;
image_blend = c_white;

audio_play_sound(choose(sndExplosion1,sndExplosion2,sndExplosion3),1,false);

effect_create_above(ef_firework,x,y,choose(0,1),c_white);
alarm[0] = 10;
