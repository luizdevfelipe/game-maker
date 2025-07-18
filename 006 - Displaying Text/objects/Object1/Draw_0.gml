 draw_set_font(Font1);
 
 draw_set_color(c_olive)
 
draw_set_halign(fa_center);
draw_set_valign(fa_middle); 

draw_text_ext_transformed_color(x, y - 200, "What a String", -1, 500, 1.2, 1.3, dsin(current_time/10)*5, c_red, c_green, c_blue, c_dkgray, 1);
 
draw_text_colour(x, y - 100, "Wow", c_red, c_blue, c_red, c_orange, 1);
 
draw_text(x, y, "Some text!");
 
draw_text_transformed(x, y + 100, "Some scaled text!", 2, 2, 0);

draw_text_ext(x, y + 230, "Some long text", -1, 300);

draw_set_color(c_white);

draw_set_halign(fa_left);
draw_set_valign(fa_top); 