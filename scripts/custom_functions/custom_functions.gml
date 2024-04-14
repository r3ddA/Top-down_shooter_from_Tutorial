//disegna l'arma del player ogni volta chiamata con i suoi rispettivi setting
function draw_weapon(){
	//disegna l'arma RAHHHHH
	//distanzia l'arma dal centro del player
	var _xOffset = lengthdir_x(weaponOffsetDist, aimDir);
	var _yOffset = lengthdir_y(weaponOffsetDist, aimDir);
	

	//flip the AK left and right
	var _weaponYscl = 0.6;
	if aimDir > 90 && aimDir <270 {_weaponYscl = -0.6;} 

	draw_sprite_ext(sAK47, 0, x + _xOffset, centerY + _yOffset, 0.6, _weaponYscl, aimDir, c_white, 1);
}