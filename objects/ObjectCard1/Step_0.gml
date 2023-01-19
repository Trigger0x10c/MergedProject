image_index = 0;
image_speed = 0;
timer--;

switch(position){
	case 1:
	if(global.place2 && global.place3 && global.place4 && global.place5)
	{canmove = false;} else {canmove = true;} break;
	case 2:
	if(global.place3 && global.place4 && global.place5)
	{canmove = false;} else {canmove = true;} break;
	case 3:
	if(global.place4 && global.place5)
	{canmove = false;} else {canmove = true;} break;
	case 4:
	if(global.place5)
	{canmove = false;} else {canmove = true;} break;
}



if(position == 5 && global.nextgrid)
{
	global.enemyhp--;
	instance_destroy();
	global.place5 = false;
	position = -1;
	if(global.edamage > 0){
	if(global.edamage > hp){
		switch global.edamage{
			case 1: global.hp--; break;
			case 2: global.hp = global.hp - 2; break;
			case 3: global.hp = global.hp - 3; break;
			case 4: global.hp = global.hp - 4; break;
			case 5: global.hp = global.hp - 5; break;
		}
	}
}
}

if(global.nextgrid && canmove && position != 5){
	if(position == 1){global.place1 = false;}
	if(position == 2){global.place2 = false;}
	if(position == 3){global.place3 = false;}
	if(position == 4){global.place4 = false;}
	position++;
}




if(position != -1){
	switch(position){
		case 1: x = 38; y = 684; 
		global.place1 = true;
		break;
		case 2: x = 368; y = 684;
		global.place2 = true;
		break;
		case 3: x = 693; y = 682;
		global.place3 = true;
		break;
		case 4: x = 1024; y = 684;
		global.place4 = true;
		break;
		case 5: x = 1340; y = 532; 
		global.place5 = true;
		break;
	}
}