#region inherit

	event_inherited();

#endregion

#region functions

	#region Pass_Uniforms
	
		Pass_Uniforms = function(){
			var _sampler = shader_get_sampler_index(shader, "g_NoiseTexture");
			var _texture = sprite_get_texture(sprite_noise, 0);			
			texture_set_stage(_sampler, _texture);
			
			shader_set_uniform_f_array(U_textureDimensions, [texture_get_width(_texture), 
															 texture_get_height(_texture)]);
															 
			shader_set_uniform_f_array(U_SurfaceDimensions, [surface_width,
												             surface_height]);
												
			shader_set_uniform_f(U_radius, radius);
		}
	
	#endregion

#endregion

#region declarations
	
	shader              = shd_large_blur_shader;
	radius              = desired_radius;
	U_SurfaceDimensions = shader_get_uniform(shader, "gm_pSurfaceDimensions");
	U_textureDimensions = shader_get_uniform(shader, "g_NoiseTextureDimensions");
	U_radius            = shader_get_uniform(shader, "g_Radius");
	
	sprite_noise        = spr_FTF_blurNoise;
	if(sprite_exists(desired_sprite_noise)){
		sprite_noise = desired_sprite_noise;	
	}
	
#endregion