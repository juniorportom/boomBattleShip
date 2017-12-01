require 'sinatra'
require './config'

get '/' do
	erb :index
end

post '/tablero' do
	erb :tablero
end

post '/atacar' do
	session['coordenada'] = "#{params['posX']}, #{params['posY']}"
	if params['posX'] == "1" and params['posY'] == "1"
		session['resultado'] = "Gano"
		session['valor11'] = "B"
		session['valor12'] = ""
	elsif params['posX'] == "1" and params['posY'] == "2"
		session['resultado'] = "Perdio"
		session['valor11'] = ""
		session['valor12'] = "B"
	else
		session['resultado'] = ""
		session['valor11'] = ""
		session['valor12'] = ""
	end
	erb :tablero
end