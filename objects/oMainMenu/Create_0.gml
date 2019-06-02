/// @description Insert description here
// You can write your code in this editor

options = ["Practice", "Local PvP","Quit"];
descriptions = [
	"Practice puzzles with side-by-side solutions.",
	"Face off against a local opponent!",
	"Exit the Game (Least fun option...)"
]
selected = 0;
go = false;
alpha_timer = 10;
alpha = 1;

fade_alpha = 0;

show_debug_message("FILES:");
show_debug_message(get_files_in_folder("Solutions/Easy"));
