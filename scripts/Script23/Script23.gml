function scrNWAttack(){
	action = "Attack";
	state = "attack";
	firingFrequency = 5;
	image_index = 0;
	alarm[1] = (3 / sprite_get_speed(sprNWAttack)) * room_speed;
}
