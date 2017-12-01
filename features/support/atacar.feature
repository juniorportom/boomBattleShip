Feature:
	Como jugador
	Quiero atacar a mi enemigo
	Para ganar el juego

Scenario: Atacar barco
Given inicie la aplicacion
When inicie la partida
And Ataque posicion "1"x"1"
Then debo ver "S" en la posicion "1" "1"

Scenario: Jugador gana
Given inicie la aplicacion
When inicie la partida
And Ataque posicion "1"x"1"
And Ataque posicion "1"x"3"
And Ataque posicion "2"x"2"
And Ataque posicion "3"x"4"
And Ataque posicion "4"x"4"
Then debo ver "Gano"

Scenario: Atacar bomba
Given inicie la aplicacion
When inicie la partida
And Ataque posicion "2"x"1"
Then debo ver "Perdio"