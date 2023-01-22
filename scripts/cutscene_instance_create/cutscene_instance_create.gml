// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cutscene_instance_create(){
	
///@arg x
///@arg y
///@arg layer_id
///@arg obj
var inst = instance_create_layer(argument0, argument1, argument2, argument3);
cutscene_end_action();

return inst;
}