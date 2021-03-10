if (turnedOn)
{
	draw_sprite(spr_dropDown, -1, x, y);
	
	if (menuLength > 3)
	{
		var numSprites = round((menuLength / 3) + 0.49);
		
		for (var i = 0; i < (numSprites - 2); i++)
		{
			draw_sprite(spr_dropDown, -1, x, y + ((i + 1) * (spriteH - 15)));
		}
		
		draw_sprite(spr_dropDown, -1, x, y + (((spacing * menuLength) + 10) - spriteH));
	}
}