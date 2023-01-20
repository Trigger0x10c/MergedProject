#region functions
	
	#region Destroy
	
		Destroy = function(){
			if(surface_exists(surface)){				
				surface_free(surface);	
			}
		}
	
	#endregion
	
	#region Pass_Uniforms
	
		Pass_Uniforms = function(){
			
		}
	
	#endregion
	
#endregion

#region declarations
	
	shader         = noone;
	surface        = noone;
	
	var _w = camera_get_view_width(view_camera[0]);
	var _h = camera_get_view_height(view_camera[0]);
	surface_resize(application_surface, 
				   _w,
				   _h);
				   
	surface_width  = _w;
	surface_height = _h;

#endregion
