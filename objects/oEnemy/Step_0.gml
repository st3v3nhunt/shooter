/// @description Movement, collision

vsp = vsp + grv;

// Check collision on x-axis
if (place_meeting(x + hsp, y, oWall)) {
  while (!place_meeting(x + sign(hsp), y, oWall)) {
    x = x + sign(hsp);
  }
  // reverse walking direction
  hsp = -hsp
}
x = x + hsp;

// Check collision on y-axis
if (place_meeting(x, y + vsp, oWall)) {
  while (!place_meeting(x, y + sign(vsp), oWall)) {
    y = y + sign(vsp);
  }
  vsp = 0;
}
y = y + vsp;

// Animation
if (place_meeting(x, y + 1, oWall)) {
  // on floor
  image_speed = 1; // animation speed for sprite
  if (hsp == 0) {
    sprite_index = sEnemy;
  } else {
    sprite_index = sEnemyR;
  }
} else {
  // in air
  sprite_index = sEnemyA;
  image_speed = 0; // do not animate sprite
  // moving downwards
  if (sign(vsp) > 0) {
    image_index = 1;
  } else { // moving upwards
    image_index = 0;
  }
}

if (hsp != 0) {
  image_xscale = sign(hsp);
}