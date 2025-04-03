action = "Idle";
state = "idle";

start_x = 1504;
start_y = 128;

width = 6;
height = 25;

isWallJumping = 0;

firingFrequency = 0;


wallJump = 0;

if (!variable_global_exists("newX")) {
    global.newX = 0;
}
if (!variable_global_exists("newY")) {
    global.newY = 0;
}

