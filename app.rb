require 'sinatra'
require './config'

get '/' do
	erb :index
end

post '/tablero' do
	erb :tablero
end

post '/jugar' do
	erb :tablero
end