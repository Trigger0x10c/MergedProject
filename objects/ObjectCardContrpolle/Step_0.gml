timer--;
//288 356

if(instance_exists(NecoArc)){
	with(NecoArc){x = 100000000; y = 100000000}
}



if(cardselecting){
	if(mouse_x > 30 && mouse_x < 318 && mouse_y > 30 && mouse_y < 386 &&  global.card1count != 0){
		cardon = 1;
	}else if(mouse_x > 380 && mouse_x < 668 && mouse_y > 30 && mouse_y < 386 && global.card2count != 0){
		cardon = 2;
	}else if(mouse_x > 730 && mouse_x < 1018 && mouse_y > 30 && mouse_y < 386 && global.card3count != 0){
		cardon = 3;
	}else if(mouse_x > 1080 && mouse_x < 1368 && mouse_y > 30 && mouse_y < 386 && global.card4count != 0){
		cardon = 4;
	}else {cardon = -1}
	
	
	if(mouse_check_button_released(mb_left) && cardon != -1){
		switch(cardon){
			case 1:
			cardselected = true;
			cardplacing = true;
			global.placeingtype = 1;
			global.card1count--;
			break;
			case 2:
			cardselected = true;
			cardplacing = true;
			global.placeingtype = 2;
			global.card2count--;
			break;
			case 3:
			cardselected = true;
			cardplacing = true;
			global.placeingtype = 3;
			global.card3count--;
			break;
			case 4:
			cardselected = true;
			cardplacing = true;
			global.placeingtype = 4;
			global.card4count--;
			break;
			case 5:
			cardselected = true;
			cardplacing = true;
			global.placeingtype = 5;
			global.card5count--;
			break;
			case 6:
			cardselected = true;
			cardplacing = true;
			global.placeingtype = 6;
			global.card6count--;
			break;
			
		}
		
		
	}
	
	if(cardselected){
		cardselecting = false;
		cardplacing = true;
		global.placedspot = -1;
		placed = false;
		cardselected = false;
	}
	
}

if(cardplacing)
{
	
	if(mouse_x > 38 && mouse_x < 326 && mouse_y > 684 && mouse_y < 1040 && !global.place1){
		mouseplacing = 1;
	}else if(mouse_x > 368 && mouse_x < 656 && mouse_y > 684 && mouse_y < 1040 && !global.place2){
		mouseplacing = 2;
	}else if(mouse_x > 693 && mouse_x < 981 && mouse_y > 682 && mouse_y < 1038 && !global.place3){
		mouseplacing = 3;
	}else {mouseplacing = -1}
	
	if(mouse_check_button_released(mb_left) && mouseplacing != -1)
	{
		switch(mouseplacing)
		{
			case 1: global.placedspot = 1; placed = true; cardplacing = false;
			switch(global.placeingtype){
				case 1:
				with(instance_create_layer(-3000,0,"Instances",ObjectCard1)){
					position = 1;
				} break;
				case 2:
				with(instance_create_layer(-3000,0,"Instances",ObjectCard2)){
					position = 1;
				} break;
				case 3:
				with(instance_create_layer(-3000,0,"Instances",ObjectCard3)){
					position = 1;
				} break;
				case 4:
				with(instance_create_layer(-3000,0,"Instances",ObjectCard4)){
					position = 1;
				} break;
				case 5:
				with(instance_create_layer(-3000,0,"Instances",ObjectCard5)){
					position = 1;
				} break;
				case 6:
				with(instance_create_layer(-3000,0,"Instances",ObjectCard6)){
					position = 1;
				} break;
			}
			nextgridtimer = 120;
			break;
			case 2: global.placedspot = 2; placed = true; cardplacing = false;
			switch(global.placeingtype){
				case 1:
				with(instance_create_layer(-3000,0,"Instances",ObjectCard1)){
					position = 2;
				} break;
				case 2:
				with(instance_create_layer(-3000,0,"Instances",ObjectCard2)){
					position = 2;
				} break;
				case 3:
				with(instance_create_layer(-3000,0,"Instances",ObjectCard3)){
					position = 2;
				} break;
				case 4:
				with(instance_create_layer(-3000,0,"Instances",ObjectCard4)){
					position = 2;
				} break;
				case 5:
				with(instance_create_layer(-3000,0,"Instances",ObjectCard5)){
					position = 2;
				} break;
				case 6:
				with(instance_create_layer(-3000,0,"Instances",ObjectCard6)){
					position = 2;
				} break;
			}
			nextgridtimer = 120;
			break;
			case 3: global.placedspot = 3; placed = true; cardplacing = false;
			switch(global.placeingtype){
				case 1:
				with(instance_create_layer(-3000,0,"Instances",ObjectCard1)){
					position = 3;
				} break;
				case 2:
				with(instance_create_layer(-3000,0,"Instances",ObjectCard2)){
					position = 3;
				} break;
				case 3:
				with(instance_create_layer(-3000,0,"Instances",ObjectCard3)){
					position = 3;
				} break;
				case 4:
				with(instance_create_layer(-3000,0,"Instances",ObjectCard4)){
					position = 3;
				} break;
				case 5:
				with(instance_create_layer(-3000,0,"Instances",ObjectCard5)){
					position = 3;
				} break;
				case 6:
				with(instance_create_layer(-3000,0,"Instances",ObjectCard6)){
					position = 3;
				} break;
			}
			nextgridtimer = 120;
			break;
			
		}
	}
}
nextgridtimer--;
if(nextgridtimer == 2){
	global.nextgrid = true;
	rounde++;
}

if(nextgridtimer == 1){
	global.nextgrid = false;
}

//for testing
if(nextgridtimer == -111){
	global.inbetween = true;
}

