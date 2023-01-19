image_index = 0;
image_speed = 0;
timer--;

switch(position){
	case 1:
	if(global.eplace2 && global.eplace3 && global.eplace4 && global.eplace5)
	{canmove = false;} else {canmove = true;} break;
	case 2:
	if(global.eplace3 && global.place4 && global.eplace5)
	{canmove = false;} else {canmove = true;} break;
	case 3:
	if(global.eplace4 && global.eplace5)
	{canmove = false;} else {canmove = true;} break;
	case 4:
	if(global.eplace5)
	{canmove = false;} else {canmove = true;} break;
}



if(position == 5 && global.nextgrid)
{
	if(!global.place5){
		global.hp--;
	}else{global.edamage = 1}
}

if(global.nextgrid && canmove && position != 5){
	if(position == 1){global.eplace1 = false;}
	if(position == 2){global.eplace2 = false;}
	if(position == 3){global.eplace3 = false;}
	if(position == 4){global.eplace4 = false;}
	position++;
}




if(position != -1){
	switch(position){
		case 1: x = 44; y = 41; 
		global.eplace1 = true;
		break;
		case 2: x = 373; y = 43;
		global.eplace2 = true;
		break;
		case 3: x = 694; y = 45;
		global.eplace3 = true;
		break;
		case 4: x = 1025; y = 45;
		global.eplace4 = true;
		break;
		case 5: x = 1345; y = 148; 
		global.eplace5 = true;
		break;
	}
}