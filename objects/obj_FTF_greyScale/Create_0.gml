#region inherit

	event_inherited();

#endregion

#region functions

	#region Pass_Uniforms
	
		Pass_Uniforms = function(){												
			shader_set_uniform_f(U_intensity, intensity);
		}
	
	#endregion

#endregion

#region declarations
	
	shader      = shd_greyscale_shader;
	intensity   = desired_intensity;
	U_intensity = shader_get_uniform(shader, "g_Intensity");

#endregion