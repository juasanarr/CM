

//draw_sprite_ext(sprUIHFrame_Boss1, 0, 160, -20, objBoss1.MaxHp / 61 , 1, 0, c_white, 1);
//draw_sprite_ext(sprUIHBar_Boss1, 1, 160, -20, objBoss1.hp / 60, 1, 0, c_white, 1);


var max_width = 200; // Ancho máximo de la barra de vida
var bar_xscale = max(0, objBoss1.hp / objBoss1.MaxHp); // Asegurar que no sea menor a 0
var bar_width = round(bar_xscale * max_width); // Redondear para evitar píxeles fraccionarios

var bar_x = 180.5; // Asegurar que se mantenga alineado

// Dibujar el marco en posición fija
draw_sprite(sprUIHFrame_Boss1, 0, 180, 10);

// Dibujar la barra de vida alineada con el borde izquierdo del marco
if (bar_xscale > 0) { // Evitar dibujar si la barra es completamente 0
    draw_sprite_ext(sprUIHBar_Boss1, 1, bar_x, 10, bar_xscale, 1, 0, c_white, 1);
}
  