//var _alvo = instance_place(x,y, obj_inflamavel)

//checando se a variavel dono existe e se existir o x e o Y da area recebe o X e o Y do respectivo dono.
if(instance_exists(dono))
{
	x = dono.x;
	y = dono.y;
}
else// se nao destroi ela
{
	instance_destroy()
}

//Faz uma lista dos objetos inflamaveis, que estao dentro da area, e coloca fogo neles.
with (obj_inflamavel)
{
    if (!em_chamas && place_meeting(x, y, other))
    {
        perto_fogo = true;
    }
}




//if(_alvo != noone)
//{
//	_alvo.perto_fogo = true
//}

//with()