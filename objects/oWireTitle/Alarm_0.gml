/// @description Insert description here
// You can write your code in this editor

var tile = tiles[index];
var type = tile[0];
var xx = tile[1];
var yy = tile[2];

var t = instance_create_layer(x+xx*tile_width, y+yy*tile_height, layer, oTile);
t.type = type;
t.player = "NONE";
t.shake = true;

audio_play_sound(sndExplosion1,1,false);
index++;

if index < array_length_1d(tiles) {
	alarm[0] = type_speed;
} else {
	done = true;
	audio_stop_all();
	audio_play_sound(mscMain,1,true);
	instance_create_layer(room_width/4, room_height * 3/4, "GUI", oMainMenu);
}