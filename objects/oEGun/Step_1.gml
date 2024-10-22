/// @desc ?
x = owner.x;
y = owner.y + 10;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if (instance_exists(oPlayer)) {
  if (oPlayer.x < x) {
    image_yscale = -image_yscale;
  }
  if (point_distance(oPlayer.x, oPlayer.y, x, y) < 600) {
    image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
    count_down--;
    if (count_down <= 0) { // ready to fire
      count_down = count_down_rate;
      if (!collision_line(x, y, oPlayer.x, oPlayer.y, oWall, false, false)) {
        audio_sound_pitch(snShot, choose(0.8, 1.0, 1.2));
        audio_play_sound(snShot, 5, false);
        with (instance_create_layer(x, y, "Bullets", oEBullet)) {
          spd = 10;
          direction = other.image_angle + random_range(-2, 2);
          image_angle = direction;
        }
      }
    }
  }
}
