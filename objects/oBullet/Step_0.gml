//move
	xSpd = lengthdir_x(spd, dir);
	ySpd = lengthdir_y(spd, dir);
	
	x += xSpd;
	y += ySpd;
	
	//collision
	if place_meeting(x, y, oSolidWall){
		instance_destroy();
	}
	