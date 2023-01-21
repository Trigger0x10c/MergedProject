/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben


// Inherit the parent event
event_inherited();

if (instance_exists(obj_text_archangel)) {
	instance_destroy(obj_text_archangel);
	}
	
	else {
		instance_create_layer(room_width / 2, room_height - 100, "Instances", obj_text_archangel);
		}