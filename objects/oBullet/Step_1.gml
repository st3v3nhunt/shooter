/// @desc ?
if (place_meeting(x, y, pShootable)) {
  with (instance_place(x, y, pShootable)) {
    hp--;
    flash = 3;
    hit_from = other.direction;
  }
  instance_destroy();
}


if (place_meeting(x, y, oWall) && image_index != 0) {
  instance_destroy();
}
