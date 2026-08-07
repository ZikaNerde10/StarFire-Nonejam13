

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
else
{
	timer_fogo = 0;
}

perto_fogo = false;


