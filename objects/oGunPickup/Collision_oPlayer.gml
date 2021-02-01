/// @desc Equip gun
global.has_gun = true;
instance_create_layer(oPlayer.x, oPlayer.y, "Gun", oGun);
instance_destroy();
