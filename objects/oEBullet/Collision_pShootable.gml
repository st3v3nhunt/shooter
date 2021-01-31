/// @desc Reduce hp of object
with (other) {
  hp--;
  flash = 3;
  hit_from = other.direction;
}

instance_destroy();