require 'sinatra'
require './config'
require './lib/tablero'

get '/' do
	erb :index
end

post '/tablero' do

	tablero = Tablero.new
	session['tablero'] = tablero
	erb :tablero
end

post '/atacar' do
	
	tablero = session['tablero'] 

	session['coordenada'] = "#{params['posX']}, #{params['posY']}"
	session['resultado'] = tablero.atacar params['posX'], params['posY']
	valor = tablero.resultados params['posX'], params['posY']

	session['valor'+"#{params['posX']}#{params['posY']}"] = valor

	erb :tablero
end