// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cutscene_instance_destroy(){
///@arg obj_id
with(argument0){instance_destroy();}
cutscene_end_action();
}