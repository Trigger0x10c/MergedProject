
#region declarations
	
	var _camX    = camera_get_view_x(camera);
	var _camY    = camera_get_view_y(camera);
	var _camW    = camera_get_view_width(camera);
	var _camH    = camera_get_view_height(camera);
	var _targetX = _camX;
	var _targetY = _camY;
	
	if(instance_exists(owner)){
		_targetX = owner.x - _camW / 2;
		_targetY = owner.y - _camH / 2;
	}
	

#endregion

#region Clamp

	_targetX = clamp(_targetX, 0, room_width  - _camW);
	_targetY = clamp(_targetY, 0, room_height - _camH);

#endregion

#region Follow

	_camX = lerp(_camX, _targetX, camera_speed);
	_camY = lerp(_camY, _targetY, camera_speed);

#endregion

#region set_camera_position

			
	camera_set_view_pos(camera, 
						_camX, 
						_camY);
					
	camera_set_view_size(camera, _camW, _camH);	
	surface_resize(application_surface, _camW, _camH);
	
#endregion
