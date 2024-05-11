//disegna l'arma del player ogni volta chiamata con i suoi rispettivi setting
function draw_weapon(){
	//distanzia l'arma dal centro del player
	var _xOffset = lengthdir_x(weaponOffsetDist, aimDir);
	var _yOffset = lengthdir_y(weaponOffsetDist, aimDir);
	

	//flip the AK left and right
	var _weaponYscl = weapon.scale;
	if aimDir > 90 && aimDir <270 {_weaponYscl = weapon.scale * -1;} 

	draw_sprite_ext(weapon.sprite, 0, x + _xOffset, centerY + _yOffset, weapon.scale, _weaponYscl, aimDir, c_white, 1);
}