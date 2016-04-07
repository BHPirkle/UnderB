#define get_input
/// get_input();
// Gets the input for movement.

up = keyboard_check(vk_up); // Up arrow key.
down = keyboard_check(vk_down); // Down arrow key.
left = keyboard_check(vk_left); // Left arrow key.
right = keyboard_check(vk_right); // Right arrow key.
interact = keyboard_check_released(vk_enter); // Interaction key.
closeBox = keyboard_check_direct(vk_rshift); // Key that closes text boxes.
close = keyboard_check_released(vk_escape); // Close game key.
fullscreen = keyboard_check_released(vk_f4); // Fullscreen key.
keyboard_set_map(fullscreen, ord("F")); // Maps the fullscreen key to F(ullscreen).

// Debug controls, enable by pressing three different keys at the same time.

four = keyboard_check(ord("4"));
two = keyboard_check(ord("2"));
zero = keyboard_check(ord("0"));

// Enable during release. (4 + 2 + 0 = Debug mode.)

if (instance_exists(obj_player)) {
    if (four and two and zero) {
        obj_player.debugKeys = true;
    }
    
    if (obj_player.debugKeys) {
        nextRoom = keyboard_check_released(vk_numpad6); // Next room key.
        previousRoom = keyboard_check_released(vk_numpad4); // Previous room key.
        showCollisions = keyboard_check_released(ord("C")); // Key that shows collision boxes.
        showWarps = keyboard_check_released(ord("W")); // Key that shows warps/teleporters.
        showMisc = keyboard_check_released(ord("M")); // Key that shows random things.
    }
}

#define script3
