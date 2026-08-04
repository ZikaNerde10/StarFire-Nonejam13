draw_self();

//draw_sprite(spr_arma,spr_arma,x,y);
var _dire = point_direction(x,y,mouse_x,mouse_y);

var _intervalo = _dire == clamp(_dire,90,270);

if(_intervalo)
{
	image_xscale = -1;
}
else
{
	image_xscale = 1;
}