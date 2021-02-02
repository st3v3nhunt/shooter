/// @desc Show sign is active

if (point_in_circle(oPlayer.x, oPlayer.y, x, y, 64) && !instance_exists(oText)) {
  sprite_index = sSignActive;
  if (keyboard_check_pressed(ord("S"))) {
    with (instance_create_layer(x, y - 64, layer, oText)) {
      text = other.text;
      length = string_length(text);
    }
    with (oCamera) {
      follow = other.id;
    }
  }
} else {
  sprite_index = sSign;
}