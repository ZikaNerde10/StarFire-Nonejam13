
// se perto do fogo entao vai aumentando o timer ate chegar em 300 frames = 5 segundos
//e ai coloca o alvo em chamas
if(perto_fogo)
{
	timer_fogo++;
	
	if(!em_chamas && timer_fogo >= room_speed * 5)
	{
	em_chamas = true;

		var _fogo = instance_create_layer(x, y, "ins_fogo", obj_fogo);
		
		_fogo.alvo = id;
	}
}
else// se nao o timer zera e o perto do fogo se torna false.
{
	timer_fogo = 0;
}

perto_fogo = false;


