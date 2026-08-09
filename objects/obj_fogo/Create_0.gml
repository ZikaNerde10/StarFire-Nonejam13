//criando a ara em volta do fogo
area = instance_create_layer(x,y,"ins_fogo",obj_area);

// setando quem e o dono do fogo por um id
area.dono = id;

//setando a variavel alvo como noone.
alvo = noone;