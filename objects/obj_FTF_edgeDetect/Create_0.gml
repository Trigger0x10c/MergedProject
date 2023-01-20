#region inherit

	event_inherited();

#endregion

#region functions

	#region Pass_Uniforms
	
		Pass_Uniforms = function(){
			shader_set_uniform_f_array(U_SurfaceDimensions, [surface_get_width(application_surface),
												             surface_get_height(application_surface)]);
												
			shader_set_uniform_f(U_threshold, threshold);
		}
	
	#endregion

#endregion

#region declarations
	
	shader              = shd_edgedetect_shader;
	threshold           = desired_threshold;
	U_SurfaceDimensions = shader_get_uniform(shader, "gm_pSurfaceDimensions");
	U_threshold         = shader_get_uniform(shader, "g_Threshold");

#endregion