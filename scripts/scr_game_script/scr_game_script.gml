//@param text_id
//the script for the entire game and the triggers for it
function scr_game_script(_text_id){
#region Receptionist
	switch(_text_id) {
		case "NAC":
		scr_text("You must be freezing cold, my dear. You can warm up here overnight.", "smiling");
		scr_text_shake(0, 3);
		scr_text("Staying is free, but there is a condition. You have to play the houses cardgame.", "smiling");
		 scr_text_color(6,10, c_red, c_red, c_red, c_red);
		scr_text("I can show you the rules, if you don't mind.", "laughing");
		 scr_text_float(8, 20);		
			scr_option("Yes", "NAC - 1.1");
			scr_option("No", "NAC - 1.2");
			
		break;
		case "NAC - 1.1":
		scr_text();
		room_goto(CardGame);
		break;
		case "NAC - 1.2":
		scr_text("Oh, that is really unfortunate, but you may come back whenever.","frowning");
		case 1:
		scr_text("Hello there new guest. I have not seen you around this chalet before.");
		break;
		
#endregion		
	}
}