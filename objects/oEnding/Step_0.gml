/// @desc Animate player to center and text

// Move player to center
layer_x("TitleAssets", min(layer_get_x("TitleAssets") + 1, RES_W * 0.5 - 32));

// Progress text
letters += spd;
text = string_copy(end_text[current_line], 1, floor(letters));

if (letters >= length && keyboard_check_pressed(vk_anykey)) {
  if (current_line + 1 == array_length_1d(end_text)) {
    SlideTransition(TRANS_MODE.RESTART);
  } else {
    current_line++;
    letters = 0;
    length = string_length(end_text[current_line]);
  }
}
