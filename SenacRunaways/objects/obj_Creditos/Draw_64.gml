	draw_set_font(fnt_Menu);
	var gui_width = display_get_gui_width();
	var gui_heigh = display_get_gui_height();
	var x1 = gui_width / 2;
	var y1 = gui_heigh / 2;
	var margin = 60;
	
	//Comandos Mouse//
		 var m_x = device_mouse_x_to_gui(0)
		 var m_y = device_mouse_y_to_gui(0)
	//Fim Comandos Mouse//

	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);

for(var i = 0;i < op_max; i++){
	var y2 = y1 + (margin * i);
	var string_w = string_width(options[i]);
	var string_h = string_height(options[i]);
	
	if (point_in_rectangle(m_x,m_y,x1 - string_w / 2,y2 - string_h / 2,x1 + string_w / 2,y2 + string_h / 2)){
		draw_set_color(c_white);
			index = i;		
		}
		draw_text(x1,y2,options[i]);
}
