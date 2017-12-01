Feature:
	Como jugador
	Quiero reiniciar el juego
	Para volver a jugar

Scenario: Reiniciar juego
Given inicie la aplicacion
When inicie la partida
And reinicio la partida
Then debo ver "Bienvenido BoomBattleShip"