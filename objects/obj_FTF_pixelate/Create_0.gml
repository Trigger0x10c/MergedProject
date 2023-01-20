#region inherit

	event_inherited();

#endregion

#region functions

	#region Pass_Uniforms
	
		Pass_Uniforms = function(){
			shader_set_uniform_f_array(U_SurfaceDimensions, [surface_width,
												             surface_height]);
												
			shader_set_uniform_f(U_cellSize, cellSize);
		}
	
	#endregion

#endregion

#region declarations
	
	shader              = shd_pixelate_shader;
	cellSize            = desired_cell_size;
	U_SurfaceDimensions = shader_get_uniform(shader, "gm_pSurfaceDimensions");
	U_cellSize          = shader_get_uniform(shader, "g_CellSize");

#endregion