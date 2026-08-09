//se ja existir a musica do menu nao tocar de novo.
if (!audio_is_playing(snd_tema))
{
	//tocando a musica do menu em loop
    audio_play_sound(snd_tema, 0, true);
}