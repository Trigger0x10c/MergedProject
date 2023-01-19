if(global.enemyhp > 0 && global.hp > 0){
	if(cardselecting){
		draw_sprite(SpriteCardSelection,0,0,0)
	
		if(global.card1count > 0){
			switch(global.card1count){
				case 1:
				draw_sprite(spr_card_zombie,0,30,30);
				draw_sprite(CardCountSprite,0,290,330)
				break;
				case 2:
				draw_sprite(spr_card_zombie,0,30,30);
				draw_sprite(CardCountSprite,1,290,330)
				break;
				case 3:
				draw_sprite(spr_card_zombie,0,30,30);
				draw_sprite(CardCountSprite,2,290,330)
				break;
				}
			}else{draw_sprite(CardSpriteNone,0,30,30)}
		
				if(global.card2count > 0 && rounde > 0){
				switch(global.card2count){
					case 1:
					draw_sprite(spr_card_monkey,0,380,30);
					draw_sprite(CardCountSprite,0,640,330)
					break;
					case 2:
					draw_sprite(spr_card_monkey,0,380,30);
					draw_sprite(CardCountSprite,1,640,330)
					break;
					case 3:
					draw_sprite(spr_card_monkey,0,380,30);
					draw_sprite(CardCountSprite,2,640,330)
					break;
				}
	
	
		}else{draw_sprite(CardSpriteNone,1,380,30)}
	
	
		if(global.card3count > 0 && rounde > 0){
			switch(global.card3count){
				case 1:
				draw_sprite(spr_card_cheetah,0,730,30);
				draw_sprite(CardCountSprite,0,990,330)
				break;
				case 2:
				draw_sprite(spr_card_cheetah,0,730,30);
				draw_sprite(CardCountSprite,1,990,330)
				break;
				case 3:
				draw_sprite(spr_card_cheetah,0,730,30);
				draw_sprite(CardCountSprite,2,990,330)
				break;
				}
			}else{draw_sprite(CardSpriteNone,2,730,30)}
		
			if(global.card4count > 0 && rounde > 1){
			switch(global.card4count){
				case 1:
				draw_sprite(spr_card_wizard,0,1080,30);
				draw_sprite(CardCountSprite,0,1340,330)
				break;
				case 2:
				draw_sprite(spr_card_wizard,0,1080,30);
				draw_sprite(CardCountSprite,1,1340,330)
				break;
				case 3:
				draw_sprite(spr_card_wizard,0,1080,30);
				draw_sprite(CardCountSprite,2,1340,330)
				break;
				}
			}else{draw_sprite(CardSpriteNone,3,1080,30)}
	}


	if(cardplacing && global.placeingtype != -1)
	{
		switch(global.placeingtype)
		{
			case 1: draw_sprite(spr_card_zombie,0,mouse_x - 150,mouse_y - 170); break;
			case 2: draw_sprite(spr_card_monkey,0,mouse_x - 150,mouse_y - 170); break;
			case 3: draw_sprite(spr_card_cheetah,0,mouse_x - 150,mouse_y - 170); break;
			case 4: draw_sprite(spr_card_wizard,0,mouse_x - 150,mouse_y - 170); break;
			case 5: draw_sprite(CardSprite,4,mouse_x - 150,mouse_y - 170); break;
			case 6: draw_sprite(CardSprite,5,mouse_x - 150,mouse_y - 170); break;
		}
	}

	//draw_set_color(c_black);
	//draw_text(1600, 40, string(global.enemyhp))
	//draw_text(1600, 80, string(global.hp))

	switch(global.hp){
		case -3: draw_sprite(Spritehp,0,1800,140); break;
		case -2: draw_sprite(Spritehp,0,1800,140); break;
		case -1: draw_sprite(Spritehp,0,1800,140); break;
		case 0: draw_sprite(Spritehp,0,1800,140); break;
		case 1: draw_sprite(Spritehp,1,1800,140); break;
		case 2: draw_sprite(Spritehp,2,1800,140); break;
		case 3: draw_sprite(Spritehp,3,1800,140); break;
		case 4: draw_sprite(Spritehp,4,1800,140); break;
		case 5: draw_sprite(Spritehp,5,1800,140); break;
		case 6: draw_sprite(Spritehp,6,1800,140); break;
		case 7: draw_sprite(Spritehp,7,1800,140); break;
		case 8: draw_sprite(Spritehp,8,1800,140); break;
		case 9: draw_sprite(Spritehp,9,1800,140); break;
		case 10: draw_sprite(Spritehp,10,1800,140); break;

	}

	switch(global.enemyhp){
		case -3: draw_sprite(SpriteEhp,0,1800,40); break;
		case -2: draw_sprite(SpriteEhp,0,1800,40); break;
		case -1: draw_sprite(SpriteEhp,0,1800,40); break;
		case 0: draw_sprite(SpriteEhp,0,1800,40); break;
		case 1: draw_sprite(SpriteEhp,1,1800,40); break;
		case 2: draw_sprite(SpriteEhp,2,1800,40); break;
		case 3: draw_sprite(SpriteEhp,3,1800,40); break;
		case 4: draw_sprite(SpriteEhp,4,1800,40); break;
		case 5: draw_sprite(SpriteEhp,5,1800,40); break;
		case 6: draw_sprite(SpriteEhp,6,1800,40); break;
		case 7: draw_sprite(SpriteEhp,7,1800,40); break;
		case 8: draw_sprite(SpriteEhp,8,1800,40); break;
		case 9: draw_sprite(SpriteEhp,9,1800,40); break;
		case 10: draw_sprite(SpriteEhp,10,1800,40); break;
	}
}else{
	if(global.enemyhp < 1){
		draw_sprite(SpriteGO,0,900,400);
	}else{draw_sprite(SpriteGO,0,900,400);}

}