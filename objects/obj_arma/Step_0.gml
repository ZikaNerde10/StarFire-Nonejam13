#region direcao da arma

//aqui eu faco com que o X do obj_arma seja igual ao X do obj_player
x = obj_player.x

//aqui eu faco com que o Y do obj_arma seja igual ao Y do obj_player
y = obj_player.y

//aqui eu crio uma variavel temporaria chamada _dire e digo que a direcao dela vai ser aonde meu
//mouse estiver apontando
var _dire = point_direction(x,y,mouse_x,mouse_y);

//aqui eu digo que o angulo do obj_arma e igual a _dir que e a direcao do meu mouse.
image_angle = _dire;

//aqui eu crio outra variavel temporaria para dizer que quando meu mouse passar da metade do player
//a arma vai mudar de escala do Y para que ela nao fique de cabeca para baixo.
var _intervalo = _dire == clamp(_dire,90,270);

//aqui eu faco um if para checar a minha variavel _intervalo e ai mudar a escala de acordo.
if(_intervalo)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}

#endregion

#region atirando

//crio uma variavel temporaria para saber quando eu clico com o botao esquerdo
var _click = mouse_check_button_pressed(mb_left);

// digo que se eu clicar com o botao esquerdo do mouse eu vou disparar a bala e emitir um som
if(_click)
{
	//setando a direcao baseado na variavel temporaria _dire
	var _xx = x + lengthdir_x(13,_dire);
	var _yy = y + lengthdir_y(13,_dire);
	
	//criando o tiro na layer do player
	var _tiro = instance_create_layer(_xx,_yy,"ins_player",obj_bala)
	_tiro.direction = _dire;
	
	//tocando o som.
	audio_play_sound(snd_bolha,0,false);
	
}

#endregion