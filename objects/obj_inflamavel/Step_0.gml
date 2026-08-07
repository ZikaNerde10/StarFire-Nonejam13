

if(perto_fogo)
{
	timer_fogo++;
	
	if(timer_fogo >= room_speed * 5  ) //&& !em_chamas
	{
		em_chamas = true;
		
		instance_create_layer(x,y,"ins_fogo",obj_fogo);
		
	}
}
else
{
	timer_fogo = 0;
}

perto_fogo = false;


