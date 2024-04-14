//disegna l'arma dietro il player quando è girato con funzione (dio sfunzione 1)
	if aimDir >= 0 && aimDir < 180{draw_weapon();}

//disegna il figlio di puttana
	draw_self();

//disegna l'arma davanti il player quando è davanti con funzione (dio sfunzione 2)
	if aimDir >= 180 && aimDir < 360{draw_weapon();}