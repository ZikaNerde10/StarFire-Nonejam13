//triangulando a variavel tempo e fazendo o resultado vezes 5.
var _onda = sin(tempo) * 5;

//desenhando o titulo e fazendo o seu Y ter o movimento de onda.
draw_sprite(
    spr_titulo,
    0,
    x,
    y + _onda
);