#region inherit

	event_inherited();

#endregion

#region functions
	
	#region Pass_Uniforms
	
		Pass_Uniforms = function(){
			shader_set_uniform_f(U_intensity, intensity);
			shader_set_uniform_f_array(U_tint, [color_get_red(tint), 
												color_get_green(tint),
												color_get_blue(tint),
												1.0]);
		}
	
	#endregion	

#endregion

#region declarations
	
	shader       = shd_colourise_shader;
	intensity    = desired_intensity;
	tint         = desired_tint;
	U_tint       = shader_get_uniform(shader, "g_TintCol");
	U_intensity  = shader_get_uniform(shader, "g_Intensity");	
	
	surface_width  = bbox_right - bbox_left;
	surface_height = bbox_bottom - bbox_top;	
	
#endregion
