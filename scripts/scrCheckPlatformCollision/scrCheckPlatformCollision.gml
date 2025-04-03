 function scrCheckPlatformCollision(width){
	var platform = collision_rectangle(x-width,y,x+width,y+1,objMovingPlatform,true,true);
	var platform2 = collision_rectangle(x-width,y,x+width,y+1,objMovingPlatform_lsspix,true,true);
	var platform3 = collision_rectangle(x-width,y,x+width,y+1,objMovingPlat_less_inverse,true,true);
	var platform4 = collision_rectangle(x-width,y,x+width,y+1,objMovPlatformVertical,true,true);
	if (platform && vspeed == 0) {
		if (platform.hspeed != 0){ scrMovement(sign(platform.hspeed), abs(platform.hspeed), width, height); }
		y = platform.y;
	}
	else if (platform2 && vspeed == 0) {
		if (platform2.hspeed != 0){ scrMovement(sign(platform2.hspeed), abs(platform2.hspeed), width, height); }
		y = platform2.y;
	}
	
	else if (platform3 && vspeed == 0) {
		if (platform3.hspeed != 0){ scrMovement(sign(platform3.hspeed), abs(platform3.hspeed), width, height); }
		y = platform3.y;
	}
	else if (platform4 && vspeed == 0) {
		if (platform4.hspeed != 0){ scrMovement(sign(platform4.hspeed), abs(platform4.hspeed), width, height); }
		y = platform4.y;
	}
}

