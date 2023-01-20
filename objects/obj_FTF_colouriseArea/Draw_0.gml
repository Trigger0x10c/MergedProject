#region exit conditions

	if(surface_width <= 0 || surface_height <= 0){
		show_debug_message("obj_colourise_filter: Wrong Dimensions");
		return;
	}

#endregion

#region recreate surface

	if(!surface_exists(surface)){
		surface = surface_create(surface_width, surface_height);	
	}

#endregion

var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);

#region draw
		
	surface_set_target(surface);
			
		draw_surface_part(application_surface,
						  bbox_left,
						  bbox_top,
						  surface_width,
						  surface_height, 
						  _camX, 
						  _camY);
		
	surface_reset_target();
					  
	shader_set(shader);
	
		Pass_Uniforms();		
			draw_surface(surface, bbox_left, bbox_top);
			
	shader_reset();

#endregion