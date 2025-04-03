// Verificar si la música está sonando
if (audio_is_playing(sndSonidoBG)) {
    // Si está sonando, la detenemos y cambiamos el sprite
    audio_stop_sound(sndSonidoBG);
    sprite_index = sonidoOFF;
} else {
    // Si no está sonando, la activamos y cambiamos el sprite
    audio_play_sound(sndSonidoBG, 0, true);
    sprite_index = sonidoON;
}
