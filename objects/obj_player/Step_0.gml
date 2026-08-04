#region Direcao que olha

//aqui eu crio uma variavel temporaria chamada _dire e digo que a direcao dela vai ser aonde meu
//mouse estiver apontando
var _dire = point_direction(x,y,mouse_x,mouse_y);

//aqui eu crio outra variavel temporaria para dizer que quando meu mouse passar da metade do player
//O player vai mudar de escala do x para que ela nao fique de em uma so direcao.
var _intervalo = _dire == clamp(_dire,90,270);

//aqui eu faco um if para checar a minha variavel _intervalo e ai mudar a escala de acordo.
if(_intervalo)
{
	image_xscale = -1;
}
else
{
	image_xscale = 1;
}


#endregion

window_set_cursor(cr_none)