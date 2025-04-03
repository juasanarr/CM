switch (state) {
	case "idle":
		scrEnemyPatrol_Allien(x + 10 , x - 10);
		scrEnemyWatch();
		break;
		
	case "chasing":
		scrEnemyChase_Allien();
		break;
} 