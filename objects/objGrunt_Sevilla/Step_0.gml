switch (state) {
	case "idle":
		scrEnemyPatrol_Sevilla(x + 10 , x - 10);
		scrEnemyWatch();
		break;
		
	case "chasing":
		scrEnemyChase_Sevilla();
		break;
}