function scrEnemyChase(){
    var dx = objPlayer.x - x;
    var dy = (objPlayer.y - objPlayer.sprite_height / 2) - (y - sprite_height / 2)
    var dist;
    if(punch){
        dist = 20
    }
    else{
        dist = 64
    }
    var dir = sign(dx);
	if (abs(dy) <= sprite_height){
		 if (abs(dx) > dist) {
        // Definir la posición delante del enemigo para detectar el borde
        var check_x = x + 10*dir; 
        var check_y = y + 2; // Un poco por debajo del enemigo

        // Si no hay suelo delante, detener el movimiento


        if(position_meeting(check_x, check_y, objWall)){
			sprite_index = asset_get_index("spr" + spr + "Walk");          
            image_xscale = dir;
            scrMovement(dir, 1, width, height);
        }
        else{
           sprite_index = asset_get_index("spr" + spr + "Idle");
        }

		}
		else {
        if (punch){
            var collision = collision_rectangle(x, y, x + 25*dir, y - height, objPlayer, false, false);
            if (collision){
				punchFrequency -= 1
				if(punchFrequency <= 0){
					sprite_index = asset_get_index("spr" + spr + "Attack");
	                objSystem.playerHP -= 1
					punchFrequency = 60
				}
            }
        }
        else{
            sprite_index =  asset_get_index("spr" + spr + "Idle");
            image_xscale = dir;

            firingFrequency -= 1;
            if (firingFrequency <= 0) {
				if(spr = "Monje"){
					var flash = instance_create_layer(x - 5*image_xscale, y - sprite_height / 2, "Bullets", objMuzzleFlash);
		            flash.image_xscale = image_xscale;
		            flash.sprite_index = sprMuzzleFlashPlasma;
					// var pendientes = [0,-0.5,-1,-1.5,-2,-5]
					bullet = instance_create_layer(x - 5*image_xscale, y - sprite_height / 2 + 1, "Bullets", objBullet);
				    var m = dy / dx
				    bullet.image_xscale = image_xscale;
				    bullet.hspeed = image_xscale*5;
				    bullet.vspeed = m*dir
					bullet.sprite_index = sprOrbe
				}
				else{
					var flash = instance_create_layer(x - 5*image_xscale, y - 8, "Bullets", objMuzzleFlash);
		            flash.image_xscale = image_xscale;
		            flash.sprite_index = sprMuzzleFlashPlasma;
					// var pendientes = [0,-0.5,-1,-1.5,-2,-5]
					bullet = instance_create_layer(x + 11*image_xscale, y - 9, "Bullets", objBullet);
				    var m = dy / dx
				    bullet.image_xscale = image_xscale;
				    bullet.hspeed = image_xscale*5;
				    bullet.vspeed = m*dir
					bullet.sprite_index = sprOrbe
					bullet.sprite_index = sprBulletPlasma;
				}
		        bullet.collisionSprite = sprBulletCollisionPlasma;
		        bullet.side = "enemy"; 
                firingFrequency = 60;
            }
        }
    }
	}
	else{
		sprite_index = asset_get_index("spr" + spr + "Idle");
		state = "idle"
	}
}