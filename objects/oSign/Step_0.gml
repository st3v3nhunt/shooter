/// @desc Show sign is active

if (point_in_circle(oPlayer.x, oPlayer.y, x, y, 64)) {
  sprite_index = sSignActive;
} else {
  sprite_index = sSign;
}