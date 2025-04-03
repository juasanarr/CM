/// @description Ataque cuerpo a cuerpo

var list = ds_list_create();
var collision = collision_rectangle_list(x, y, x + 20 * image_xscale, y - height, objEnemy, false, false, list, false);

if (collision) {
	for (var i=0;i<ds_list_size(list);i++) {
		var enemy = list[| i];
		if (objSystem.weapons[objSystem.weaponInd ] == "NW") {
			scrEnemyDamage(enemy, 1);
		}
		else if (objSystem.weapons[objSystem.weaponInd ] == "ES") {
		scrEnemyDamage(enemy, 10);
		}
	}
}

ds_list_destroy(list);