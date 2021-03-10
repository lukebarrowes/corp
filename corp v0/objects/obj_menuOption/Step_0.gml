
if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x, y, x + string_width(text), y + string_height(text)))
	mouseHover = true;
else
	mouseHover = false;
	
if (global.isPaused && !(layer_has_instance("layer_pauseScreen", self)))
	clickable = false;
else
	clickable = true;

if (mouse_check_button_released(mb_left))
{
	if (mouseHover && clickable)
	{
		switch (text)
		{
			case "Play Game":
				menu_playGame();
				break;
			case "Settings":
				menu_settings();
				break;
			case "Quit":
				menu_quit();
				break;
			case "Return":
				menu_return();
				break;
			case "Graphics":
				menu_graphics()
				break;
			case "Resolution":
				menu_resolution();
				break;
			case "Audio":
				menu_audio();
				break;
			case "Company Build":
				menu_companyBuild();
				break;
			case "Company Height":
				menu_companyHeight();
				break;
			case "Company Width":
				menu_companyWidth();
				break;
			case "Bribe":
				menu_bribe();
				break;
			case "Blackmail":
				menu_blackmail();
				break;
			case "Kill":
				menu_kill();
				break;
			case "Save Game":
				menu_saveGame();
				break;
			case "Load Game":
				menu_loadGame();
				break;
			case "Quit Game":
				menu_quit();
				break;
			case "Quit to Menu":
				menu_quitToMenu();
				break;
			case "Return to Game":
				menu_returnToGame();
				break;
				
		}
	}
}