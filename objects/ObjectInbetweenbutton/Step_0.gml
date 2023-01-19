if(global.inbetween)
{
	if(mouse_check_button_released(mb_left))
	{
		if(mouse_x > 1343 && mouse_x < 1727 && mouse_y > 906 && mouse_y < 1034)
		{
			global.inbetween = false;
			with(ObjectCardContrpolle){cardselecting = true;}
		}else if(mouse_x > 1757 && mouse_x < 1885 && mouse_y > 906 && mouse_y < 1034)
		{
			with(ObjectCardContrpolle){nextgridtimer = 120;}
			global.inbetween = false;
		}
	}
}