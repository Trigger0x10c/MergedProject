#region inherit

	event_inherited();

#endregion

#region functions

	#region Pass_Uniforms
	
		Pass_Uniforms = function(){												
			shader_set_uniform_f(U_colorLevel, color_level);
		}
	
	#endregion

#endregion

#region declarations
	
	shader       = shd_posterise_shader;
	color_level  = desired_color_level;
	U_colorLevel = shader_get_uniform(shader, "g_ColourLevels");

#endregion