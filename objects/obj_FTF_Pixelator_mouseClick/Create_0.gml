#region inherit

	event_inherited();

#endregion

#region functions

	#region RunOnUpdate
	
		RunOnUpdate = function(){
			switch(state){
				#region e_fx_state.NONE
				
					case e_fx_state.NONE:{
						if(mouse_check_button_pressed(mb_left)){
							state = e_fx_state.IN;	
						}
						
					} break;
				
				#endregion	
				
				#region e_fx_state.IN
				
					case e_fx_state.IN:{
						curve_position += 1/frequency_in;
						var _target = 1;
						if(curve_position >= _target){
							curve_position = _target;
							alarm[0] = 1;
						}						
						
						var _max = 16;
						var _tween = animcurve_channel_evaluate(curve_channel, curve_position);
						cellSize = _tween * _max;
						
					} break;
				
				#endregion	
				
				#region e_fx_state.OUT
				
					case e_fx_state.OUT:{
						curve_position += 1/frequency_out;
						var _target = 1;
						if(curve_position >= _target){
							curve_position = _target;
							image_alpha = 0;
							alarm[1]    = 1;
						}						
						
						var _max = 16;
						var _tween = animcurve_channel_evaluate(curve_channel, curve_position);
						cellSize = max(1, _tween * _max);
						
					} break;
				
				#endregion					
			}
		}
	
	#endregion
	
	#region SetCurve
	
		SetCurve = function(_pFunction){
			var _curveAsset = animcurve_get(_pFunction);
			curve_channel = animcurve_get_channel(_curveAsset, 0);
		}
	
	#endregion
	
#endregion

#region declarations
	
	frequency_in   = desired_frequency_in;
	frequency_out  = desired_frequency_out;
	curve_channel  = noone;
	curve_position = 0;
	state          = e_fx_state.NONE;

#endregion

SetCurve(EaseIn);