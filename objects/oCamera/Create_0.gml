/// @description Setup camera
cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;
mountain_layer_id = layer_get_id("Mountains");
tree_layer_id = layer_get_id("Trees");

shake_length = 0; // 60 frames / 1 second
shake_magnitude = 0;
shake_remain = 0;
buff = 32;