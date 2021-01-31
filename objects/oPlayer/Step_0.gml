/// @description Movement, collision

#region // Player input
if (has_control) {
  key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
  key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
  key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));
} else {
  key_left = 0;
  key_right = 0;
  key_jump = 0;
}
#endregion

// Movement
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;
can_jump -= 1;

// Check if on floor
on_floor = place_meeting(x, y + 1, oWall);
if (key_jump && can_jump > 0) {
  vsp = -8;
  can_jump = 0;
}

// Check collision on x-axis
if (place_meeting(x + hsp, y, oWall)) {
  while (!place_meeting(x + sign(hsp), y, oWall)) {
    x = x + sign(hsp);
  }
  hsp = 0;
}
x = x + hsp;

// Check collision on y-axis
if (place_meeting(x, y + vsp, oWall)) {
  while (!place_meeting(x, y + sign(vsp), oWall)) {
    y = y + sign(vsp);
  }
  vsp = 0;
}
y = y + vsp;

#region // Animation
if (on_floor) {
  can_jump = 10;
  if (sprite_index == sPlayerA) { // just landed
    audio_sound_pitch(snLanding, choose(0.8, 1.0, 1.2));
    audio_play_sound(snLanding, 3, false);
    repeat (5) { // create 5 dust
      with (instance_create_layer(x, bbox_bottom, "Bullets", oDust)) {
        vsp = 0;
      }
    }
  }
  image_speed = 1; // animation speed for sprite
  if (hsp == 0) {
    sprite_index = sPlayer;
  } else {
    sprite_index = sPlayerR;
  }
} else {
  // in air
  sprite_index = sPlayerA;
  image_speed = 0; // do not animate sprite
  // moving downwards
  if (sign(vsp) > 0) {
    image_index = 1;
  } else { // moving upwards
    image_index = 0;
  }
}

if (hsp != 0) {
  image_xscale = sign(hsp);
}
#endregion