/*KYS GAMER*/
//Variables 4 movement

	moveDir = 0;
	moveSpd = 2;

	xSpd = 0;
	ySpd = 0;

//controllo dello sprite porcaccio il gesù bambino
	centerYOffSet = -6;
	centerY = y + centerYOffSet;

	weaponOffsetDist = 4;
	aimDir = 0;

	face = 3;
	sprite[0] = sPlayerRight;
	sprite[1] = sPlayerUp;
	sprite[2] = sPlayerLeft;
	sprite[3] = sPlayerDown;
	
//weapon
	shootTimer = 0;
	
	AK47 = new create_weapon(
		sAK47, 
		sprite_get_bbox_right(sAK47) - sprite_get_xoffset(sAK47),
		oBullet, 12, 30, 3); 

	weapon = AK47;