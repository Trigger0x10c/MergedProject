/// @description Insert description here
// You can write your code in this editor

up_key = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);
//store number of options in current menu
op_length = array_length(option[menu_level]);

//move
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length - 1};
//use menu
if accept_key {
	
	var _sml = menu_level;
	
	switch(menu_level) {
		//pause menu
		case 0:
			switch(pos){
			case 0: room_goto_next(); break;
			case 1: menu_level = 1;break;
			case 2: game_end(); break;}
		break;
		//settings
		case 1:
		switch(pos){
		case 0: break;
		case 1: break;
		case 2: break;
		case 3: menu_level = 0; break;}
 }
		//sets menu selector at the top
		if _sml != menu_level {pos = 0};
		//correct option length
op_length = array_length(option[menu_level]);
}