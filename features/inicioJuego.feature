Feature:
	Como jugador de BoomBattleShip 
	quiero iniciar una partida
	para poder cargar el tablero

Scenario: inicio de aplicacion
Given inicie la aplicacion
Then debo ver "Bienvenido BoomBattleShip"

Scenario: inicio de partida
Given inicie la aplicacion
When inicie la partida 
Then debo ver "Boom BattleShip"
