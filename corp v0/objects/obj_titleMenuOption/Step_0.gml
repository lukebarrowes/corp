if (mouse_check_button_pressed(mb_left))
{
	if (point_in_rectangle(mouse_x, mouse_y, x, y, x + string_width(optionText), y + string_height(optionText)))
	{	
		switch (menuNum)
		{
			case 0: menu_playGame();
				break;
			case 1:
				menu_settings();
				break;
			case 2:
				menu_quit();
				break;
			case 3:
				menu_return();
				break;
		}
	}
}