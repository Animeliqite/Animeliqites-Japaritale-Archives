/// Sets the solid four direction from the current real direction
function Variable_ConvertDirection(value){
	if (value >= 225 && value < 315)
		return DIR.DOWN;
	if (value >= 315 || value < 45)
		return DIR.RIGHT;
	if (value >= 45 && value < 135)
		return DIR.UP;
	if (value >= 135 && value < 225)
		return DIR.LEFT;
}