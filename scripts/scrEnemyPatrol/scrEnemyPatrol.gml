 function scrEnemyPatrol(x1,x2){
	if (wait <= 0) {
		sprite_index = asset_get_index("spr" + spr + "Walk");
		image_xscale = dir;
		scrMovement(dir, 0.7, width, height);

		if (dir == 1 && x >= x2) {
			dir = -1;
			sprite_index = asset_get_index("spr" + spr + "Idle");
			wait = room_speed * 3;
		} else if (dir == -1 && x <= x1) {
			dir = 1;
			sprite_index = asset_get_index("spr" + spr + "Idle");
			wait = room_speed * 3;
		}
	} else { 
		wait -= 1;
	}
}