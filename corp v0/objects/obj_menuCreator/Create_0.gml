menuOptions = 3;
for (var i = menuOptions - 1; i >= 0; i--)
{
	menuOptions[i] = instance_create_layer(x, y + (i * 50), "layer_menu", obj_menuOption);
}

menuOptions[0].optionText = "Play game";
menuOptions[1].optionText = "Settings";
menuOptions[2].optionText = "Quit";