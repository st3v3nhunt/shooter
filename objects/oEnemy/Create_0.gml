/// @desc Setup
my_gun = noone;
if (has_weapon) {
  my_gun = instance_create_layer(x, y, "Gun", oEGun);
  with (my_gun) {
    owner = other.id;
  }
}
