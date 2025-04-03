
//draw_sprite_ext(sprUIHPFrame, 0, 1, 3, (objSystem.playerMaxHP + 63) / 64, (2 + 6) / 7, 0, c_white, 1);

//draw_sprite_part(sprUIHPBar, 0, 0, 0, objSystem.playerHP, 2, 5, 5);





draw_sprite_ext(sprUIHPFrame, 1, 1, 1, objSystem.playerMaxHP / 5, 1, 0, c_white, 1);
draw_sprite_ext(sprUIHPBar, 0, 16, 11, objSystem.playerHP / 5 , 1, 0, c_white, 1);
  