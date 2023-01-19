occupied1 = false;
occupied2 = false;
occupied3 = false;
occupied4 = false;
occupied5 = false;

rounde = 0;

if(!variable_global_exists("edamage")){
	global.edamage = 0;
}

if(!variable_global_exists("pdamage")){
	global.pdamage = 0;
}

if(!variable_global_exists("inbetween")){
	global.inbetween = false;
}

if(!variable_global_exists("card1count")){
	global.card1count = 3;
}

if(!variable_global_exists("card2count")){
	global.card2count = 3;
}

if(!variable_global_exists("card3count")){
	global.card3count = 3;
}

if(!variable_global_exists("card4count")){
	global.card4count = 3;
}

if(!variable_global_exists("card5count")){
	global.card5count = 1;
}

if(!variable_global_exists("card6count")){
	global.card6count = 1;
}

if(!variable_global_exists("place1")){
	global.place1 = false;
}

if(!variable_global_exists("place2")){
	global.place2 = false;
}

if(!variable_global_exists("place3")){
	global.place3 = false;
}

if(!variable_global_exists("place4")){
	global.place4 = false;
}

if(!variable_global_exists("place5")){
	global.place5 = false;
}

if(!variable_global_exists("placeingtype")){
	global.placeingtype = -1;
}

if(!variable_global_exists("placedspot")){
	global.placedspot = -1;
}

if(!variable_global_exists("enemyhp")){
	global.enemyhp = 10;
}

if(!variable_global_exists("hp")){
	global.hp = 10;
}


cardselecting = true;
cardplacing = false;
nextround = false;

cardselected = false;

cardon = -1;

timer = 0;

mouseplacing = -1;
placed = false;
cardcreated = false;

global.nextgrid = false;
nextgridtimer = -120;