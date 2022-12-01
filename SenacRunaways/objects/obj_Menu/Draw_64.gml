	draw_set_font(fnt_Menu);
	var gui_width = display_get_gui_width();
	var gui_heigh = display_get_gui_height();
	var x1 = gui_width / 2;
	var y1 = gui_heigh / 2;
	var margin = 50;
	
	//Comandos Mouse//
		 var m_x = device_mouse_x_to_gui(0)
		 var m_y = device_mouse_y_to_gui(0)
	//Fim Comandos Mouse//

	draw_set_halign(fa_center);
	draw_set_valign(fa_center);

	for(var i = 0;i < op_max; i++){
	var y2 = y1 + (margin * i);
	
	var string_w = string_width(options[i]);
	var string_h = string_height(options[i]);
	
		if (point_in_rectangle(m_x,m_y,x1 - string_w / 2,y2 - string_h / 2,x1 + string_w / 2,y2 + string_h / 2)){
		draw_set_color(c_maroon);
			index = i;
			if(mouse_check_button_pressed(mb_left)){
				if(index == 3){
					game_end()
				}
				if(index == 1){
					room_goto(rmLore)
				}
				if(index == 0){
					room_goto(rmFase1)
				}
			
				if(index == 2){
					room_goto(rmCreditos)}
			}		
			
		}else{
		draw_set_color(c_white);	
		}
		draw_text(x1,y2,options[i]);
}



