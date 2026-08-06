//var _alvo = instance_place(x,y, obj_inflamavel)

if(instance_exists(dono))
{
	x = dono.x;
	y = dono.y;
}
else
{
	instance_destroy()
}

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