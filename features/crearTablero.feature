Feature:
	Como jugador
	Quiero ver el tablero de juego
	Para Comenzar a jugar

Scenario: Ver tablero de 2x2
Given inicie la aplicacion
When inicie la partida
Then debo ver tablero de "2" x "2"
