//se ja existir a musica do menu nao tocar de novo.
if (!audio_is_playing(snd_musica_intro))
{
	//tocando a musica do menu em loop
    audio_play_sound(snd_musica_intro, 0, true);
}

//checando se a musica ja existe para nao ficar repetindo.
if (audio_is_playing(snd_tema))
{
	//parando a musica
    audio_stop_sound(snd_tema);
}

//voltando o cursor do usuario ao normal novamente.
window_set_cursor(cr_default);