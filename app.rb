require 'sinatra'
require './config'

get '/' do
	erb :index
end

post '/tablero' do
	"Tablero 2x2"
end