//it draws the weapon player with its corrisponding proprieties
function draw_weapon(){
	//distance from the player center to the weapon center
	var _xOffset = lengthdir_x(weaponOffsetDist, aimDir);
	var _yOffset = lengthdir_y(weaponOffsetDist, aimDir);
	

	//flip the AK left and right
	var _weaponYscl = weapon.scale;
	if aimDir > 90 && aimDir <270 {_weaponYscl = weapon.scale * -1;} 

	draw_sprite_ext(weapon.sprite, 0, x + _xOffset, centerY + _yOffset, weapon.scale, _weaponYscl, aimDir, c_white, 1);
}
