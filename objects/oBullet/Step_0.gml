//move
	xSpd = lengthdir_x(spd, dir);
	ySpd = lengthdir_y(spd, dir);
	
	x += xSpd;
	y += ySpd;

//cleanup
	//distruzione più totale
	if destroy == true{ 
		//vfx
		/*
		put code here
		*/
		
		instance_destroy(); 
	}
	
	//collision
	if place_meeting(x, y, oSolidWall){ destroy = true; }

	//bullet out of range
	if point_distance(xstart, ystart, x, y) > maxDist { instance_destroy(); }
	


	