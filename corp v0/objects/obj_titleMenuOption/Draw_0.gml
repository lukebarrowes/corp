draw_set_font(fnt_menus);

if (point_in_rectangle(mouse_x, mouse_y, x, y, x + string_width(optionText), y + string_height(optionText)))
{
	draw_set_color(c_red);
}
else
{
	draw_set_color(c_white);
}

draw_text(x, y, optionText);
