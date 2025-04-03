// En el evento "Step" (en lugar de "End Step")
if (x > xto && hspeed > 0) {
    hspeed *= -1; // Invierte la dirección al alcanzar el límite
} else if (x < xfrom && hspeed < 0) {
    hspeed *= -1;
} 

if (y > yto && vspeed > 0) {
    vspeed *= -1; // Corrige error: debería ser "*=-1" en lugar de "= -1"
} else if (y < yfrom && vspeed < 0) {
    vspeed *= -1;
}
   