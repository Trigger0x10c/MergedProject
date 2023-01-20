#region functions
	
	#region Animate
	
		Animate = function(){
			if(dirX != 0 || dirY != 0){
				Play_Animation(sprite_move);	
			} else {
				Play_Animation(sprite_idle);	
			}
		}
	
	#endregion
	
	#region Check_Input
	
		Check_Input = function(){
			var _right = keyboard_check(vk_right);
			var _left  = keyboard_check(vk_left);
			var _up    = keyboard_check(vk_up);
			var _down  = keyboard_check(vk_down);
	
			dirX = _right - _left;
			dirY = _down  - _up;
			
			if(dirX < 0){
				image_xscale = abs(image_xscale) * -1;
				
			} else if(dirX > 0){
				image_xscale = abs(image_xscale);
				
			}
		}
	
	#endregion
	
	#region Move
	
		Move = function(){
			var _direction = point_direction(0, 0, dirX, dirY);	
			velocityX = 0;
			if(dirX != 0){		
				velocityX = lengthdir_x(acceleration, _direction);
			}
	
			velocityY = 0;
			if(dirY != 0){
				velocityY = lengthdir_y(acceleration, _direction);
			}
	
			x += velocityX;
			y += velocityY;
		}
	
	#endregion
	
	#region Play_Animation
	
		Play_Animation = function(_pSprite){
			if(!sprite_exists(_pSprite) ||
				sprite_index == _pSprite){
				return;
			}
			
			sprite_index = _pSprite;
			image_index  = 0;
		}
	
	#endregion

#endregion

#region declarations
	
	acceleration = 2;
	dirX         = 0;
	dirY         = 0;
	velocityX    = 0;
	velocityY    = 0;

#endregion