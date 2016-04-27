/// GetInput();
// Gets the input for movement.
debug = false;

up = keyboard_check(vk_up); // Up arrow key.
down = keyboard_check(vk_down); // Down arrow key.
left = keyboard_check(vk_left); // Left arrow key.
right = keyboard_check(vk_right); // Right arrow key.
interact = keyboard_check_pressed(vk_enter); // Interaction key.
keyboard_set_map(ord("Z"), vk_enter); // Maps Z to the interact key.
back = keyboard_check_pressed(vk_rshift); // Goes back in some menus.
keyboard_set_map(ord("X"), vk_rshift); // Maps X to the back key.
close = keyboard_check_released(vk_escape); // Close game key.
fullscreen = keyboard_check_pressed(vk_f4); // Fullscreen key.
keyboard_set_map(ord("F"), vk_f4); // Maps F(ullscreen) to the fullscreen key.

// Make sure to disable this on release.
if (debug) {
    nextRoom = keyboard_check_released(vk_numpad6); // Next room key.
    previousRoom = keyboard_check_released(vk_numpad4); // Previous room key.
    showCollisions = keyboard_check_released(ord("C")); // Key that shows collision boxes.
}
