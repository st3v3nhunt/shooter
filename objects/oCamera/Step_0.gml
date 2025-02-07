/// @description Update camera

// Update destination
if (instance_exists(follow)) {
  xTo = follow.x;
  yTo = follow.y;
  if (follow.object_index == oDead) {
    x = xTo;
    y = yTo;
  }
}

// Update cam position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

// Keep camera center inside room
x = clamp(x, view_w_half + buff, room_width - view_w_half - buff);
y = clamp(y, view_h_half + buff, room_height - view_h_half - buff);


// Screen shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1 / shake_length) * shake_magnitude));

// Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

if (room != rMenu && room != rEnding) {
  if (layer_exists(mountain_layer_id)) {
    layer_x(mountain_layer_id, x * 0.5);
  }

  if (layer_exists(tree_layer_id)) {
    layer_x(tree_layer_id, x * 0.25);
  }
}