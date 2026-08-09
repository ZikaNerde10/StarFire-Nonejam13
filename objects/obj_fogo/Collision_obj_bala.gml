if (instance_exists(alvo))
{
    alvo.em_chamas = false;
    alvo.timer_fogo = 0;
}

audio_play_sound(snd_apagar,0,false);
instance_destroy(other);