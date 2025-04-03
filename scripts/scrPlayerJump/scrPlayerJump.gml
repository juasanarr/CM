function scrPlayerJump(){
	if (keyboard_check_pressed(vk_space)) {
		scrJump(width);
		audio_play_sound(sndSonidoJump,0,false);
	}
}