//if ihe player is facing the upper part the weapon is draw before the player
	if aimDir >= 0 && aimDir < 180{draw_weapon();}

	draw_self();

//if the player is facing down the weapon is draw after so it's draw over the player
	if aimDir >= 180 && aimDir < 360{draw_weapon();}
