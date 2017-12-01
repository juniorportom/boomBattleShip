Feature:
	Como jugador
	Quiero atacar a mi enemigo
	Para ganar el juego

Scenario: Atacar barco
Given inicie la aplicacion
When inicie la partida
And Ataque posicion "1"x"1"
Then debo ver "Gano"

Scenario: Atacar bomba
Given inicie la aplicacion
When inicie la partida
And Ataque posicion "1"x"2"
Then debo ver "Perdio"