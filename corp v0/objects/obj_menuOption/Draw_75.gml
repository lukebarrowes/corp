draw_set_font(fnt_menuText);

if (mouseHover)
{
	draw_set_color(c_red);
}
else
{
	draw_set_color(c_white);
}

draw_text(x, y, string(text + " " + addText));