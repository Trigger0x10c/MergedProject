#region recreate surface

	if(!surface_exists(surface)){
		surface = surface_create(surface_width, 
								 surface_height);
	}

#endregion

#region copy application surface
	
	surface_set_target(surface);
	
		draw_clear_alpha(c_white, 0);
			
		draw_surface_stretched(application_surface, 
							   0, 
							   0, 
							   surface_width, 
							   surface_height);
		
	surface_reset_target();
	
#endregion

#region draw surface

	shader_set(shader);
		Pass_Uniforms();
	
		draw_surface_ext(surface, 
						 0, 
						 0, 
						 1, 
						 1, 
						 image_angle, 
						 c_white, 
						 image_alpha);
	
	shader_reset();

#endregion