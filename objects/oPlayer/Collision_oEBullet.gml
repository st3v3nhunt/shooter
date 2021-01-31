/// @desc Kill player and destroy bullet
if (hp <= 0) {
  KillPlayer();
} else {
  hp--;
}

with (other) instance_destroy();
