/// @description
if (hp <= 0) {
  with (instance_create_layer(x, y, layer, oEnemyDead))
  {
    direction = other.hit_from;
    hsp = lengthdir_x(3, direction);
    vsp = lengthdir_y(3, direction) - 2;
    if (sign(hsp) != 0) {
      image_xscale = sign(hsp) * other.size;
      image_yscale = other.size;
    }
    
  }
  with (my_gun) instance_destroy();
  if (instance_exists(oPlayer)) {
    global.kills++;
    global.kills_this_room++;
    with (oGame) kill_text_scale = 2;
  }
  instance_destroy();
}
