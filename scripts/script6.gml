/// Warp(room, sound1, sound2);
// A warping system that I hope functions well.
var destination = argument0;
var sound1 = argument1;
var sound2 = argument2;

if (room_get_name(self.room) != destination) {
    fadeOut = instance_create(0, 0, obj_fadeOut);
    with (fadeOut) {
        alarm[0] = 0;
    }
}
