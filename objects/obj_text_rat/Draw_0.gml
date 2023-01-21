/// @description Hier Beschreibung einfügen
//align in center
draw_set_font(PlaceholderFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//draw control message
draw_text_transformed(x, y-50, "The smart rat,", 0.5, 0.5, image_angle); //insert text here \n to break line
draw_text_transformed(x, y, "she may seem useless at first,", 0.5, 0.5, image_angle);
draw_text_transformed(x, y+50, "but her loyalty and survival instinct are of great help!", 0.5, 0.5, image_angle);
//reset the alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);

