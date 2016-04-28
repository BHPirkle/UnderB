/// GetInput();
// Gets the input for movement.

up = keyboard_check(vk_up); // Up arrow key.
down = keyboard_check(vk_down); // Down arrow key.
left = keyboard_check(vk_left); // Left arrow key.
right = keyboard_check(vk_right); // Right arrow key.
interact = keyboard_check_pressed(vk_enter); // Interaction key.
keyboard_set_map(ord("Z"), vk_enter); // Maps Z to the interact key.
back = keyboard_check_pressed(vk_rshift); // Goes back in some menus.
keyboard_set_map(ord("X"), vk_rshift); // Maps X to the back key.
