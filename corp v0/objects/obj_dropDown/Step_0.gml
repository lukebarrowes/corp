if (mouse_check_button_released(mb_right) && !global.isPaused)
{	
	turnedOn = true;
	x = device_mouse_x_to_gui(0);
	y = device_mouse_y_to_gui(0);
	
	menuLength = buildMenu_dropDown();
	
}

if (mouse_check_button_released(mb_left) && !point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x, y, x + myWidth, y + myHeight))
{
	turnedOn = false;
	layer_destroy_instances("layer_dropDown");
}

if (global.isPaused)
{
	turnedOn = false;
	layer_destroy_instances("layer_dropDown");
}