// se a instancia alvo existir transformo a variavel em_chamas do alvo em false e reseta o timer para 0.
if (instance_exists(alvo))
{
    alvo.em_chamas = false;
    alvo.timer_fogo = 0;
}

//toca o som do fogo apagando e destroi o obj_fogo
audio_play_sound(snd_apagar,0,false);
instance_destroy(other);