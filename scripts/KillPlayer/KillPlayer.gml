// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function KillPlayer(){
  with (oGun) {
    instance_destroy(); // get rid of gun
  }
  instance_change(oDead, true);

  direction = point_direction(other.x, other.y, x, y);
  hsp = lengthdir_x(6, direction);
  vsp = lengthdir_y(4, direction) - 2;
  if (sign(hsp) != 0) {
    image_xscale = sign(hsp);
  }

  global.kills -= global.kills_this_room;
}