if place_meeting(x, y, NecoArc){
	 //keyboard_check_pressed(ord("E")) &&
	if !instance_exists(obj_transition) {
	var inst = instance_create_depth(0,0, -99999, obj_transition);
	inst.target_x = target_x;
	inst.target_y = target_y;
	inst.target_room = target_room;
	}
}

