if (place_meeting(x, y, NextLevel)) {
    // Guardar la nueva posición en variables globales
    global.newX = 64;
    global.newY = 320;

    // Cambiar a la siguiente room
    room_goto_next();
}


//	global.spawn_x = 64; // Posición donde quieres que aparezca
	//global.spawn_y = 320;