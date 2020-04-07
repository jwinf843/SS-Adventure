/// @description Execute on Frame


// Player Input
left = keyboard_check(vk_left) or keyboard_check(ord("A"))
right = keyboard_check(vk_right) or keyboard_check(ord("D"))
up = keyboard_check(vk_up) or keyboard_check(ord("W"))
down = keyboard_check(vk_down) or keyboard_check(ord("S"))

activate = keyboard_check_pressed(vk_space)
attack = keyboard_check_pressed(vk_shift)
item = keyboard_check_pressed(vk_control)

input_direction = point_direction(0, 0, right - left, down - up)
input_magnitude = (right - left != 0) or (down - up != 0)

// Movement
h_speed = lengthdir_x(input_magnitude * walk_speed, input_direction)
v_speed = lengthdir_y(input_magnitude * walk_speed, input_direction)

x += h_speed
y += v_speed