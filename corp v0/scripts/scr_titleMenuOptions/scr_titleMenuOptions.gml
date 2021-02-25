//on startup
function menu_buildTitleMenu()
{
	numOptions = 3;
	for (var i = numOptions - 1; i >= 0; i--)
	{
		menuOptions[i] = instance_create_layer(obj_titleMenuCreator.x, obj_titleMenuCreator.y + (i * 50), "layer_menu", obj_titleMenuOption);
	}

	menuOptions[0].optionText = "Play game";
	menuOptions[1].optionText = "Settings";
	menuOptions[2].optionText = "Quit";
	
	for (var i = 0; i < numOptions; i++)
	{
		menuOptions[i].menuNum = i;
	}
}


//menu option 0
function menu_playGame()
{
	room_goto(rm_corpMap);
}


//menu option 1
function menu_settings()
{
	instance_destroy(obj_titleMenuOption);
	numOptions = 1;
	for (var i = numOptions - 1; i >= 0; i--)
	{
		menuOptions[i] = instance_create_layer(obj_titleMenuCreator.x, obj_titleMenuCreator.y + (i * 50), "layer_menu", obj_titleMenuOption);
	}

	menuOptions[0].optionText = "return";
	
	for (var i = 0; i < numOptions; i++)
	{
		menuOptions[i].menuNum = i + 3;  //adding 3 because there are three options in the original menu
	}									 //if more are added, this number should go up
}

//menu option 3
function menu_return()
{
	instance_destroy(obj_titleMenuOption);
	menu_buildTitleMenu();
}

//menu option 2
function menu_quit()
{
	game_end();
}