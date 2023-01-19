//Textbox parameters
textbox_h = 320;
textbox_w = 1350;
border = 40;
line_sep = 80;
line_width = textbox_w - border*2;
textbox_image = 0;
textbox_image_speed = 0;

//Text parameters
page = 0; //used to change pages on the textbox
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]); //checks the length of the string
char[0,0] = "";
char_x[0,0] = 0;
char_y[0,0] = 0;
draw_char =	0; //the amount of characters drawn
text_speed = 1; //the speed with which every individual character appears on screen
// options
option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;

setup = false;
//sound
snd_delay = 4;
snd_count = snd_delay;

//effects
scr_set_defaults_for_text();
last_free_space = 0;
text_pause_timer = 0;
text_pause_time = 16;