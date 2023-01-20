depth = -100000;
#region inherit

	event_inherited();

#endregion

#region functions

	#region Pass_Uniforms
	
		Pass_Uniforms = function(){												
			shader_set_uniform_f_array(U_tint, [color_get_red(tint),
												color_get_green(tint),
												color_get_blue(tint),
												1.0]);
													 
			shader_set_uniform_f(U_intensity, intensity);
		}
	
	#endregion

#endregion

#region declarations
	
	shader      = shd_colourise_shader;
	intensity   = desired_intensity;
	tint        = desired_tint;
	U_tint      = shader_get_uniform(shader, "g_TintCol");
	U_intensity = shader_get_uniform(shader, "g_Intensity");	

#endregion