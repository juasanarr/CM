switch (state) {
	case "idle":
		scrEnemyPatrol(x + 10 , x - 10);
		scrEnemyWatch();
		break;
		
	case "chasing":
		scrEnemyChase();
		break;
}