function create_cutscene(){
var inst = instance_create_layer(0,0, "Instances_1", obj_cutscene);
with(inst){
	scene_info = argument0;
	event_perform(ev_other, ev_user0);
	}
}