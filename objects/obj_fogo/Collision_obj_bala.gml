if (instance_exists(alvo))
{
    alvo.em_chamas = false;
    alvo.timer_fogo = 0;
}

instance_destroy(other);