//move & shoot input (WASD)
upKey = keyboard_check(ord("W"));
leftKey = keyboard_check(ord("A"));
downKey = keyboard_check(ord("S"));
rightKey = keyboard_check(ord("D"));
shootKey = mouse_check_button(mb_left);


//player movement
#region playerMovement

	//get the direction
		var _horizKey = rightKey - leftKey;
		var _vertKey = downKey -upKey;
	
	moveDir = point_direction(0, 0, _horizKey, _vertKey); //uses the degree of a circle
	
	//get the x and y speeds
		var _spd = 0;
		var _inputLevel = point_distance(0, 0, _horizKey, _vertKey);
		_inputLevel = clamp(_inputLevel, 0, 1);
		_spd = moveSpd * _inputLevel;
	
	xSpd = lengthdir_x(_spd, moveDir);
	ySpd = lengthdir_y(_spd, moveDir);
	
	//collision
		if place_meeting(x + xSpd, y, oWall) { xSpd = 0; }
		if place_meeting(x, y + ySpd, oWall) { ySpd = 0; }
	
	
	//move the player
		x += xSpd;
		y += ySpd;
	
	//depth
		depth = -bbox_bottom;
#endregion


 #region spriteControl
	//get the player looking w the right sprite
		face = round(aimDir/90);
		if face == 4 {face = 0;}
	
	//animate
		if xSpd == 0 && ySpd == 0 {image_index = 0;}
	
	//set the player sprite
		sprite_index = sprite[face];
	
	//sprite control
		centerY = y + centerYOffSet;
	
	//aim
		aimDir = point_direction(x, centerY, mouse_x, mouse_y);
#endregion

//shoot!
if shootTimer > 0 {shootTimer--;}

if shootKey && shootTimer <=0{
	//reset timer
	shootTimer = weapon.coolDown;
	
	//shooting
		//create the bullet
		var _xOffset = lengthdir_x(weapon.lenght + weaponOffsetDist - weapon.distance, aimDir);
		var _yOffset = lengthdir_y(weapon.lenght + weaponOffsetDist - weapon.distance, aimDir);
		var _bulletInst = instance_create_depth(x + _xOffset, centerY + _yOffset, depth-100, weapon.bulletObj);

		//change the direction
		with(_bulletInst){
			dir = other.aimDir;
			image_angle = other.aimDir;
			image_xscale = other.weapon.bulletScale;
			image_yscale = other.weapon.bulletScale;
		}
}
