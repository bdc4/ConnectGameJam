/// @description Insert description here
// You can write your code in this editor

// Watch Score
with (oGrid) {
	if myScore >= other.score_limit {
		other.win_message = player+" WINS!";
		instance_destroy(oGrid);
		with (oTile) {
			instance_change(oTileDead,true);
		}
		with (oBlankTile) {
			instance_destroy();
		}
	}
}
