/// @desc SlideTransition(mode, target_room)
/// @arg Mode sets transition mode between next, restart and goto.
/// @arg Target sets target room when using the goto mode.

function SlideTransition(_mode) {
  with (oTransition) {
    mode = _mode;
    if (argument_count > 1) {
      target = argument[1];
    }
  }
}