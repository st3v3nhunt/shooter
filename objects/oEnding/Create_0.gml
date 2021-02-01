/// @desc Setup text

gun_sprite = layer_sprite_get_id("TitleAssets", "gGun");

if (global.has_gun && global.kills > 0) {
  end_text[0] = "Congratulations. You have reached the end of the road.";
  end_text[1] = "The road you took was dark and menacing.";
  end_text[2] = "You alone decided to choose the way of the gun with death following you at every turn.";
  end_text[3] = "Some would say it was like a smell, a very bad smell, the worse smell.";
  end_text[4] = "But you know what, you survived and that is to be applauded.";
  end_text[5] = "The end...or is it?";
} else {
  layer_sprite_destroy(gun_sprite);
  end_text[0] = "Congratulations. You have reached the end of the road.";
  end_text[1] = "The road you took was one of purity and light.";
  end_text[2] = "For not one soul was lost and many foes were turned to friends.";
  end_text[3] = "This was your choice alone and for that you are to be applauded.";
  end_text[4] = "The end...or is it?";
}

spd = 0.5;
letters = 0;
current_line = 0;
length = string_length(end_text[current_line]);
text = "";
