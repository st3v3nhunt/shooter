/// @desc Create wall

my_wall= instance_create_layer(x, y, layer, oWall);
with (my_wall) {
  // scale wall to size of crate
  image_xscale = other.sprite_width / sprite_width;
  image_yscale = other.sprite_height / sprite_height;
}

