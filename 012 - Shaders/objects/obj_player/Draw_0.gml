shader_set(shd_test);

shader_set_uniform_f(mouse, mouse_x / room_width);

draw_self();

shader_reset();