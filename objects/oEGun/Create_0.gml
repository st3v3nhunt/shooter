/// @desc Setup

count_down_rate = 40; // frequency of fire, in frames
count_down = count_down_rate;

if (!global.has_gun) {
  instance_destroy();
}
