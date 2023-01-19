up_key = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);
textbox_x = camera_get_view_x( view_camera[0] ) + 0; 
textbox_y = camera_get_view_y( view_camera[0] ) + 710;

//setup
if setup == false 
{
 setup = true;
 draw_set_font(global.font_main);
 draw_set_valign(fa_top);
 draw_set_halign(fa_left)
 //loop through pages
 for(var p = 0; p < page_number; p++)	
	{
		//find how many characters there are on each page and then store it in the "text_length" array
	text_length[p] = string_length(text[p]); 
	//get the x pos for textbox
		//character on the left
		text_x_offset[p] = 400;
		portrait_x_offset[p] = 20;
		//character on the right;
		if speaker_side[p] == -1 {
		text_x_offset[p] = 10;
		portrait_x_offset = 1600;
		}
		//textbox pos when no character on screen and the textbox is centered, centered text offset = 287
		if speaker_sprite[p] == noone {
		text_x_offset[p] = 287;
		}	
		//setting individual characters and finding where the line should break
		for (var c = 0; c < text_length[p]; c++)
{
		var _char_pos = c+1;
		//store individual characters in the "char" array
		char[c, p] = string_char_at(text[p], _char_pos);
		//get current width of the line
		var _txt_up_to_char = string_copy(text[p], 1, _char_pos);
		var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[c,p]);
		//get the last free space
		if char[c, p] == " " { last_free_space = _char_pos + 1};
		//get the line breaks
		if _current_txt_w - line_break_offset[p] > line_width
			{
			line_break_pos[ line_break_num[p] , p ] = last_free_space;
			line_break_num[p]++;
			var _txt_up_to_last_space = string_copy( text[p], 1, last_free_space );
			var _last_free_space_string = string_char_at(text[p], last_free_space );
 			line_break_offset[p] = string_width( _txt_up_to_last_space) - string_width(_last_free_space_string);
			}
}
		//getting each characters coordinates
		for (var c = 0; c < text_length[p]; c++)
			{
			var _char_pos = c+1;
			var _txt_x = textbox_x + text_x_offset[p] + border;
			var _txt_y = textbox_y + border;
			//get current width of the line
			var _txt_up_to_char = string_copy(text[p], 1, _char_pos);
			var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[c,p]);
			var _txt_line = 0;
			//compensate for line breaks
				for (var lb = 0; lb < line_break_num[p]; lb++)
				{
				//if the current looping character is after a line break
				if _char_pos >= line_break_pos[lb, p]
					{
					var _str_copy = string_copy( text[p], line_break_pos[lb, p], _char_pos-line_break_pos[lb, p] ); 
					_current_txt_w = string_width( _str_copy );
					//record the "line" this character should be on 
					_txt_line = lb+1;// +1 since lb starts at 0
					}
				}
			//add to the x and y coords based on the new info
			char_x[c,p] = _txt_x + _current_txt_w;
			char_y[c,p] = _txt_y + _txt_line*line_sep;
			}
	}
}
//typing the text
if text_pause_timer <= 0
{
if draw_char < text_length[page]
	{
		draw_char += text_speed;
		draw_char = clamp(draw_char, 0, text_length[page]);
		var _check_char = string_char_at( text[page], draw_char);
		if _check_char == "." || _check_char == "?" || _check_char == "!" || _check_char == ","
		{
			text_pause_timer = text_pause_time;
			audio_play_sound(snd[page], 8, false);
		} else
		{
		if snd_count < snd_delay {
			snd_count++;
			} else {
			snd_count = 0;
			audio_play_sound(snd[page], 8, false);
			}
		}
	}
} else 
{
text_pause_timer--;	
}
//flip through pages
if accept_key
	{
	
	//if the typing is done
	if draw_char == text_length[page]
		{
			//next page
			if page < page_number-1
			{
			page++;
			draw_char = 0;
			}
		//destroy textbox
			else
				{
					//link text for options
					if option_number > 0{
					create_textbox(option_link_id[option_pos]);
					}
				instance_destroy();
				}
		}
		//if not done typing
		else
			{
			draw_char = text_length[page];
			}
	}

//draw textbox
var _txtb_x = textbox_x + text_x_offset[page];
var _txtb_y = textbox_y;
textbox_image += textbox_image_speed;
textbox_sprite_w = sprite_get_width(textbox_sprite[page]);
textbox_sprite_h = sprite_get_height(textbox_sprite[page]);
//draw the speaker
if speaker_sprite[page] != noone
	{
	sprite_index = speaker_sprite[page];
	//this can be used to stop the portrait animation when the text is drawn completely//if draw_char == text_length[page] {image_index = 0};
	var _speaker_x = textbox_x + portrait_x_offset[page];
	if speaker_side[page] == -1 {_speaker_x += sprite_width}
	
	draw_sprite_ext(textbox_sprite[page], textbox_image, textbox_x + portrait_x_offset[page], textbox_y, sprite_width/textbox_sprite_w, sprite_height/textbox_sprite_h, 0, c_white, 0.75);
	draw_sprite_ext(sprite_index, image_index, _speaker_x, textbox_y, speaker_side[page], 1, 0, c_white, 1);
	}
//back of the textbox
draw_sprite_ext(textbox_sprite[page], textbox_image, _txtb_x, _txtb_y, textbox_w/textbox_sprite_w, textbox_h/textbox_sprite_h, 0, c_white, 0.75);

//options
if draw_char == text_length[page] && page == page_number - 1
{
	//option selection
	option_pos +=down_key - up_key;
	option_pos = clamp(option_pos, 0, option_number-1);
	//draw options
var _op_space = 100;
var _op_bord = 30;
for (var op = 0; op < option_number; op++)
	{
	//response boxes
	var _o_w = string_width(option[op]) + _op_bord*2;
	draw_sprite_ext(textbox_sprite[page], textbox_image, _txtb_x + 100, _txtb_y - _op_space*option_number + _op_space*op, _o_w/textbox_sprite_w, (_op_space-1)/textbox_sprite_h, 0, c_white, 0.75);
	//selection
	if option_pos == op
		{
		draw_sprite(ArcHand, 0, _txtb_x, _txtb_y - _op_space*option_number + _op_space*op); 
		}
	//draw text
	draw_text(_txtb_x+100+_op_bord, _txtb_y - _op_space*option_number + _op_space*op + 20, option[op]);
	}	
}

//draw the actual text
for(c = 0; c < draw_char; c++)
{
	//vfx
	//wavy text
	var _float_y = 0;
	if float_text[c, page] == true
	{
		float_dir[c, page] += -6;
		_float_y = dsin(float_dir[c, page])*10;//change the modifier to amplify the effect
	}
	//shaky text
	var _shake_x = 0;
	var _shake_y = 0;
	if shake_text[c, page] == true
	{
		shake_timer[c, page]--;
		if shake_timer[c, page] <= 0
			{
			shake_timer[c, page] = irandom_range(4, 8);
			shake_dir[c, page] = irandom(360); 
			}
		if shake_timer[c, page] <= 2 { 	
		_shake_x = lengthdir_x(1, shake_dir[c, page]) * 3;//change the modifier to amplify the effect	
		_shake_y = lengthdir_y(1, shake_dir[c, page]) * 3;//change the modifier to amplify the effect
		}
	}
//the text
draw_text_color(char_x[c,page] + _shake_x, char_y[c, page] + _float_y + _shake_y, char[c,page], col_1[c, page], col_2[c, page], col_3[c, page], col_4[c, page], 1);
}