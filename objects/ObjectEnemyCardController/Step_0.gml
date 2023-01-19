if(global.nextgrid){
	timer = 30;	
}
timer--;

if(timer == 1 && !placed)
{
	with(instance_create_layer(-3000,0,"Instances",ObjectEnemyCard1)){
		position = 1;
	}
	placed = true;
}