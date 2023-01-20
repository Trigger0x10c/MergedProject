#region inherit

	event_inherited();

#endregion

#region functions

	#region Pass_Uniforms
	
		Pass_Uniforms = function(){												
			shader_set_uniform_f(U_surfW, surface_width);
			shader_set_uniform_f(U_surfH, surface_height);
		}
	
	#endregion

#endregion

#region declarations
	
	shader         = shd_scanlines;
	surface_width  = display_get_gui_width();
	surface_height = display_get_gui_height();
	U_surfW        = shader_get_uniform(shader, "surface_width");
	U_surfH        = shader_get_uniform(shader, "surface_height");

#endregion

#region disable the automatic drawing of the application surface

	application_surface_draw_enable(false);

#endregion