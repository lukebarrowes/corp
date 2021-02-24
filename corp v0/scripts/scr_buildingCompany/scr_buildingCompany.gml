// construct company structure: how many tiers, how many employees per tier, etc.
function buildTiers(compHeight, compWidth)
{
	global.company[0][0] = 5;
	var spacing = 150;
	
	for (var tier = 0; tier < compHeight; tier++)
	{
			var tierWidth = 1;
		
			//tier 0 (the top tier) only has one employee; the CEO
			if (tier != 0)
			{
				if (tier < compHeight / 2)
				{
//					var temp = 25 / (compHeight / 2);			
//					temp = parabola(tier * temp + 25);
//					temp = (temp / 100) * compWidth;
//					round(temp);
//					tierWidth = temp + random_range(-1, 1);

					var temp = compWidth / (compHeight / 2);
					tierWidth = round(tier * temp) + random_range(-1, 1);
				}
				else
				{
					tierWidth = compWidth + random_range(-1, 1);
				}
				
			}
			
			for (var w = 0; w < tierWidth; w++)
			{
				var startDistance = (((compWidth / 2) - (tierWidth / 2)) * spacing) + (spacing * 4);

				global.company[tier][w] = instance_create_layer(spacing * w + startDistance, spacing * tier + spacing, "layer_company", obj_npc);
			}
	}
	
	
}