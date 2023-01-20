#region inherit

	event_inherited();

#endregion

#region functions

	#region Pass_Uniforms
	
		Pass_Uniforms = function(){	
			time += 1/frequency;
			time = time mod 359;
			
			shader_set_uniform_f(U_time, time);
			shader_set_uniform_f(U_intensity, intensity);
		}
	
	#endregion

#endregion

#region declarations
	
	shader      = shd_UnderWater;
	frequency   = desired_frequency;
	intensity   = desired_intensity;
	time        = 0;
	U_time      = shader_get_uniform(shader, "Time");
	U_intensity = shader_get_uniform(shader, "Intensity");

#endregion