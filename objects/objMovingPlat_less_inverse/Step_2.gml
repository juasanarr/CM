if ((x <= xto && hspeed < 0) || (x >= xfrom && hspeed > 0)) {
    hspeed *= -1; // Invierte la dirección cuando llega al límite
} 

if ((y <= yto && vspeed < 0) || (y >= yfrom && vspeed > 0)) {
    vspeed *= -1;
}
