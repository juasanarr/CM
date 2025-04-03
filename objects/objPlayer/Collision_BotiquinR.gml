
var healthsum = 2.5;

if (place_meeting(x, y, BotiquinR)) { 
	if((objSystem.playerHP + healthsum)>=objSystem.playerMaxHP){
		objSystem.playerHP=5;
		with (BotiquinR) instance_destroy();
	}
	else{
		objSystem.playerHP += healthsum; // Aumentar la vida correctamente
    with (BotiquinR) instance_destroy(); // Eliminar el botiquín después de recogerlo
	}
}
 